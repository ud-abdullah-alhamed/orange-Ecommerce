import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/presention/getx/category_controller.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/category_widget.dart';

class CategoryWidget extends GetView<CategoryController> {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 154,
      width: double.infinity,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return const SizedBox(width: 10);
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: controller.categoryList.length,
          itemBuilder: (context, index) {
            return categoryWidget(controller.categoryList[index]);
          }),
    );
  }
}
