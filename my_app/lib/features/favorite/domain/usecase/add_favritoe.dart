import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';

class AddFavritoe {
  static AddFavritoe get instance => Get.find();

  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(ProductModel product) async {
    await productsCollection.add(product.tojson());
  }
}
