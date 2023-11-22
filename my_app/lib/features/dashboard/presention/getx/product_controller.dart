import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';
import 'package:my_app/features/dashboard/domain/repository/product_repository.dart';

class ProductsController extends GetxController {
  static ProductsController get instance => Get.find();
  final ProductRepository _productRepository = ProductRepository();
  final RxList<ProductModel> products = <ProductModel>[].obs;
  late ScrollController scrollController;
  var isLoading = false.obs;
  var page = 1;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(_scrollListener);

    fetchData();
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      fetchData();
    }
  }

  Future<void> fetchData() async {
    if (!isLoading.value) {
      isLoading.toggle();
      final result = await _productRepository.fetchProducts(page);
      products.addAll(result);
      page++;
      isLoading.toggle();
    } else {
      isLoading.toggle();
      throw Exception('Failed to load products');
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
