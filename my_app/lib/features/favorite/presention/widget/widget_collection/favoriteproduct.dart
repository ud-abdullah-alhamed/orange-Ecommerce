import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/product_container.dart';
import 'package:my_app/features/favorite/presention/getx/favorite_controller.dart';

class FavoirteProduct extends GetView<FavoriteController> {
  const FavoirteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: controller.favoriteProducts.length,
          itemBuilder: (context, index) {
            return Card(
                elevation: 3,
                child: ListTile(
                    title: productContainer(controller.favoriteProducts[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        controller
                            .toggleService(controller.favoriteProducts[index]);
                      },
                    )));
          },
        )
      ],
    );
  }
}
