// ignore_for_file: avoid_returning_null_for_void

import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/category_model.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  List<CategoryModel> categoryList = [
    CategoryModel(
        callback: () => null,
        title: 'Flash \nDea',
        iconData: "assets/icons/Flash Icon.svg"),
    CategoryModel(
        callback: () => null,
        title: 'Bill\n',
        iconData: "assets/icons/Bill Icon.svg"),
    CategoryModel(
        callback: () => null,
        title: 'Daily \nGift',
        iconData: "assets/icons/Gift Icon.svg"),
    CategoryModel(
        callback: () => null,
        title: 'More\n',
        iconData: "assets/icons/Plus Icon.svg"),
  ];
}
