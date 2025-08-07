import 'package:flutter/material.dart';
import '../foodtype.dart';
import 'addform.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการอาหาร"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: emp.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(emp[index].name),
                    subtitle: Text('ราคา: ${emp[index].price} บาท'),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: IconButton(
              icon: const Icon(Icons.add, size: 40, color: Colors.amber),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddForm()),
                ).then((value) {
                  setState(() {});
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
