import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/presention/getx/product_controller.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/product_container.dart';

class Productwidget extends GetView<ProductsController> {
  const Productwidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return controller.products.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Obx(
            () => Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 150,
              width: double.infinity,
              child: ListView.separated(
                  controller: controller.scrollController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < controller.products.length) {
                      return productContainer(controller.products[index]);
                    } else {
                      return controller.isLoading.value
                          ? const CircularProgressIndicator()
                          : Container();
                    }
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 5);
                  },
                  itemCount: controller.products.length + 1),
            ),
          );
  }
}
