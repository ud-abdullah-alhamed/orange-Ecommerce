import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';

class FavoriteController extends GetxController {
  static FavoriteController get instance => Get.find();
  List<ProductModel> favoriteProducts = <ProductModel>[].obs;

  void toggleService(ProductModel product) {
    if (favoriteProducts.contains(product)) {
      favoriteProducts.remove(product);

      update();
      Get.snackbar(
          "you add it before", "${product.title} is aleardy in you favoirate",
          snackPosition: SnackPosition.BOTTOM,
          colorText: appcolor,
          backgroundColor: errorColor);
    } else {
      favoriteProducts.add(product);
      update();
    }
  }
}
