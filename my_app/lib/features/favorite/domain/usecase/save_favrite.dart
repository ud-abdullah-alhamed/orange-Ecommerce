import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';

class SaveFavritoe {
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  List<ProductModel> favproducts = <ProductModel>[].obs;

  Future<List<ProductModel>> getProducts() async {
    QuerySnapshot snapshot = await productsCollection.get();
    return snapshot.docs
        .map((doc) => ProductModel.fromJson(
              doc.data() as Map<String, dynamic>,
            ))
        .toList();
  }

  Future<void> fetchProducts() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('your_collection').get();
      List<ProductModel> products = snapshot.docs
          .map((doc) => ProductModel.fromJson(
                doc.data() as Map<String, dynamic>,
              ))
          .toList();

      favproducts.assignAll(products);
    } catch (e) {
      print('Error fetching products: $e');
    }
  }
}
