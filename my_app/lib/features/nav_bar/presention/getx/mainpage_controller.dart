import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  static MainPageController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  final navbarItem = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.storefront_outlined,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.chat_bubble_outline_outlined,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_2_outlined,
      ),
      label: "",
    ),
  ];
}
