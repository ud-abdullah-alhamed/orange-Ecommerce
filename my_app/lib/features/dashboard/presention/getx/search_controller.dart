import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFiledController extends GetxController {
  static SearchFiledController get find => Get.find();
  String hintText = 'Search Product';
  TextEditingController searchController = TextEditingController();
  Icon icon = const Icon(
    Icons.search,
  );
  TextInputType textinput = TextInputType.text;
}
