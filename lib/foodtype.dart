enum FoodType {
  sidedish,
  maindish,
  dessert,
  beverage;

  String get ty {
    switch (this) {
      case FoodType.sidedish:
        return 'อาหารทานเล่น';
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
      name: "แพนเค้ก",
      component: "แป้ง, เนย, น้ำผึ้ง",
      price: 120,
      foodpic: Foodpic.menu1,
      foodType: FoodType.dessert),
  FoodMenu(
      name: "ซูชิแซลมอน",
      component: "ข้าวญี่ปุ่น, ปลาแซลมอน",
      price: 180,
      foodpic: Foodpic.menu2,
      foodType: FoodType.sidedish),
  FoodMenu(
      name: "คัพเค้ก",
      component: "แป้ง, ครีม, น้ำตาล",
      price: 65,
      foodpic: Foodpic.menu3,
      foodType: FoodType.dessert),
  FoodMenu(
      name: "ทาโก้",
      component: "แป้งทาโก้, เนื้อบด, ผัก",
      price: 95,
      foodpic: Foodpic.menu4,
      foodType: FoodType.maindish),
  FoodMenu(
      name: "ข้าวปั้นโอนิกิริ",
      component: "ข้าวญี่ปุ่น, สาหร่าย",
      price: 45,
      foodpic: Foodpic.menu5,
      foodType: FoodType.sidedish),
  FoodMenu(
      name: "สลัดผักรวม",
      component: "ผักสลัด, มะเขือเทศ, หัวหอม",
      price: 159,
      foodpic: Foodpic.menu6,
      foodType: FoodType.sidedish),
  FoodMenu(
      name: "ฮอทดอก",
      component: "ขนมปัง, ไส้กรอก, ซอส",
      price: 70,
      foodpic: Foodpic.menu7,
      foodType: FoodType.maindish),
];