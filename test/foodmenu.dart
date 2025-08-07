import 'package:flutter/material.dart';

enum Foodpic {
  menu1(image: "assets/pilot1.png"),
  menu2(image: "assets/pilot2.png"),
  menu3(image: "assets/pilot3.png"),
  menu4(image: "assets/pilot4.png"),
  menu5(image: "assets/pilot5.png"),
  menu6(image: "assets/pilot6.png"),
  menu7(image: "assets/pilot7.png");

  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  final String name;
  final String type;
  final String component;
  final int price;
  final Foodpic foodpic;
  final Color color;

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
    required this.color,
  });
}

List<FoodMenu> emp = [
  FoodMenu(
      name: "แพนเค้ก",
      type: "ของหวาน",
      component: "แป้ง, เนย, น้ำผึ้ง",
      price: 120,
      foodpic: Foodpic.menu1,
      color: Colors.pink.shade100),
  FoodMenu(
      name: "ซูชิแซลมอน",
      type: "อาหารญี่ปุ่น",
      component: "ข้าวญี่ปุ่น, ปลาแซลมอน",
      price: 180,
      foodpic: Foodpic.menu2,
      color: Colors.teal.shade100),
  FoodMenu(
      name: "คัพเค้ก",
      type: "ของหวาน",
      component: "แป้ง, ครีม, น้ำตาล",
      price: 65,
      foodpic: Foodpic.menu3,
      color: Colors.pink.shade100),
  FoodMenu(
      name: "ทาโก้",
      type: "อาหารเม็กซิกัน",
      component: "แป้งทาโก้, เนื้อบด, ผัก",
      price: 95,
      foodpic: Foodpic.menu4,
      color: Colors.orange.shade100),
  FoodMenu(
      name: "ข้าวปั้นโอนิกิริ",
      type: "อาหารญี่ปุ่น",
      component: "ข้าวญี่ปุ่น, สาหร่าย",
      price: 45,
      foodpic: Foodpic.menu5,
      color: Colors.teal.shade100),
  FoodMenu(
      name: "สลัดผักรวม",
      type: "สุขภาพ",
      component: "ผักสลัด, มะเขือเทศ, หัวหอม",
      price: 159,
      foodpic: Foodpic.menu6,
      color: Colors.green.shade100),
  FoodMenu(
      name: "ฮอทดอก",
      type: "อาหารจานด่วน",
      component: "ขนมปัง, ไส้กรอก, ซอส",
      price: 70,
      foodpic: Foodpic.menu7,
      color: Colors.red.shade100),
];
