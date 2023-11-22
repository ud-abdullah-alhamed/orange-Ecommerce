import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/data/model/product_model.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/product_container.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';

final CollectionReference productsCollection =
    FirebaseFirestore.instance.collection('products');

Future<void> addProduct(ProductModel product) async {
  await productsCollection.add(product.tojson());
}

Future<void> deleteProduct(int productId) async {
  final querySnapshot =
      await productsCollection.where('id', isEqualTo: productId).get();
  for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
    await productsCollection.doc(documentSnapshot.id).delete();
  }
}

class FavController extends GetxController {
  static FavController get instance => Get.find();
  List<ProductModel> favproducts = <ProductModel>[].obs;
  Future<List<ProductModel>> getProducts() async {
    QuerySnapshot snapshot = await productsCollection.get();
    return snapshot.docs
        .map((doc) => ProductModel.fromJson(
              doc.data() as Map<String, dynamic>,
            ))
        .toList();
  }

  void toggleService(ProductModel product) {
    if (favproducts.contains(product)) {
      favproducts.remove(product);

      update();
      Get.snackbar(
          "you add it before", "${product.title} is aleardy in you favoirate",
          snackPosition: SnackPosition.BOTTOM,
          colorText: appcolor,
          backgroundColor: successful);
    } else {
      favproducts.add(product);
      addProduct(product);
      update();
    }
  }
}

class FavPage extends GetView<FavController> {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Products'),
      ),
      body: Center(
        child: Obx(
          () => controller.favproducts.isEmpty
              ? Center(
                  child: Dashboard.categoryText('No favorite products yet.'),
                )
              : Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.favproducts.length,
                      itemBuilder: (context, index) {
                        return Card(
                            elevation: 3,
                            child: ListTile(
                                title: productContainer(
                                    controller.favproducts[index]),
                                // You can add more details or actions here
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    deleteProduct(
                                        controller.favproducts[index].id);
                                    controller.toggleService(
                                        controller.favproducts[index]);
                                  },
                                )));
                      },
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
