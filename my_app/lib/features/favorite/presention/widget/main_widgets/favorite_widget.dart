// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/favorite/app_bar/favorite_appbar.dart';
import 'package:my_app/features/favorite/presention/getx/favorite_controller.dart';
import 'package:my_app/features/favorite/presention/widget/main_widgets/favorite_content.dart';

class Favoritewidget extends GetView<FavoriteController> {
  const Favoritewidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteController());
    return Scaffold(
      appBar: FavoriteAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Obx(() => controller.favoriteProducts.isEmpty
              ? Favorite.noFavoirteProduct()
              : Favorite.favoirteProduct()),
        ),
      ),
    );
  }
}
