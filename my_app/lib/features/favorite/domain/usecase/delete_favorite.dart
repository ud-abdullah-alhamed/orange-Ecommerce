import 'package:cloud_firestore/cloud_firestore.dart';

class DeleteFavritoe {
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future<void> deleteProduct(int productId) async {
    final querySnapshot =
        await productsCollection.where('id', isEqualTo: productId).get();
    for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
      await productsCollection.doc(documentSnapshot.id).delete();
    }
  }
}
