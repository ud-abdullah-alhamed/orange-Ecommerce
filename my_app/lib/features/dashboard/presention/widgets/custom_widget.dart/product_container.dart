import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';
import 'package:my_app/features/favorite/presention/getx/favorite_controller.dart';
import 'package:my_app/test/dav.dart';

GestureDetector productContainer(ProductModel productModel) {
  String truncatedText = productModel.title.length > 20
      ? "${productModel.title.substring(0, 15)}..."
      : productModel.title;

  return GestureDetector(
    onTap: () => {
      FavController.instance.toggleService(productModel),
      FavoriteController.instance.toggleService(productModel)
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          productModel.imgurl,
          width: 100,
          height: 80,
        ),
        const SizedBox(height: 10),
        Dashboard.productTitlte(truncatedText),
        Dashboard.productPrice("${productModel.price.toString()} JOD")
      ],
    ),
  );
}
