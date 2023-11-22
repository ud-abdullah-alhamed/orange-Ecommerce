// product_repository.dart
import 'package:dio/dio.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';

class ProductRepository {
  final Dio _dio = Dio();

  Future<List<ProductModel>> fetchProducts(var page) async {
    try {
      String lazyApi =
          'https://fakestoreapi.com/products?_page=$page&_limit=10';

      final response = await _dio.get(lazyApi);

      final List<dynamic> rawData = response.data;
      final List<ProductModel> products =
          rawData.map((json) => ProductModel.fromJson(json)).toList();
      return products;
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }
}
