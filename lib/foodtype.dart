// lib/models/food_models.dart

enum FoodType {
  steak,
  maindish,
  dessert,
  beverage;

  String get ty {
    switch (this) {
      case FoodType.steak:
        return 'สเต็ก';
      case FoodType.maindish:
        return 'อาหารจานเดียว';
      case FoodType.dessert:
        return 'ของหวาน';
      case FoodType.beverage:
        return 'เครื่องดื่ม';
    }
  }
}

enum Foodpic {
  menu1(namefood: "แพนเค้ก", image: "assets/pilot1.png"),
  menu2(namefood: "ซูชิ", image: "assets/pilot2.png"),
  menu3(namefood: "คัพเค้ก", image: "assets/pilot3.png"),
  menu4(namefood: "ทาโก้", image: "assets/pilot4.png"),
  menu5(namefood: "ข้าวปั้นโอนิกิริ", image: "assets/pilot5.png"),
  menu6(namefood: "สลัดผักรวม", image: "assets/pilot6.png"),
  menu7(namefood: "ฮอทดอก", image: "assets/pilot7.png");

  const Foodpic({required this.namefood, required this.image});
  final String namefood;
  final String image;
}

class FoodMenu {
  final String name;
  final String component;
  final int price;
  final Foodpic foodpic;
  final FoodType foodType;

  FoodMenu({
    required this.name,
    required this.component,
    required this.price,
    required this.foodpic,
    required this.foodType,
  });
}

List<FoodMenu> emp = [
  FoodMenu(
      name: "สเต็กเนื้อ",
      component: "เนื้อสันใน",
      price: 250,
      foodpic: Foodpic.menu1,
      foodType: FoodType.steak)
];