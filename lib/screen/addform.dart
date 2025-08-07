import 'package:flutter/material.dart';
import '../foodtype.dart';
import 'item.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _component = '';
  int _price = 0;
  FoodType _foodType = FoodType.steak;
  Foodpic _foodpic = Foodpic.menu1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เพิ่มข้อมูล"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("ชื่ออาหาร"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนชื่ออาหาร";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  maxLength: 100,
                  decoration: const InputDecoration(
                    label: Text("ส่วนประกอบสำคัญ"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนส่วนประกอบสำคัญ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _component = value!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("ราคา"),
                  ),
                  onSaved: (value) {
                    _price = int.parse(value!);
                  },
                ),
                DropdownButtonFormField<FoodType>(
                  value: _foodType,
                  decoration: const InputDecoration(
                    label: Text("ชนิดอาหาร"),
                  ),
                  items: FoodType.values.map((key) {
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.ty),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _foodType = value!;
                    });
                  },
                ),
                DropdownButtonFormField<Foodpic>(
                  value: _foodpic,
                  decoration: const InputDecoration(
                    label: Text("เลือกรูปภาพ"),
                  ),
                  items: Foodpic.values.map((pic) {
                    return DropdownMenuItem(
                      value: pic,
                      child: Row(
                        children: [
                          Text(pic.namefood),
                          const SizedBox(width: 10),
                          Image.asset(pic.image, width: 30, height: 30)
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _foodpic = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text(
                    "บันทึก",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      emp.add(FoodMenu(
                        name: _name,
                        component: _component,
                        price: _price,
                        foodpic: _foodpic,
                        foodType: _foodType,
                      ));
                      _formKey.currentState!.reset();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ItemScreen()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}