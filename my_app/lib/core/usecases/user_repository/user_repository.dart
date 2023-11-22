import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/data/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) {
    _db
        .collection('User')
        .add(user.tojason())
        .whenComplete(() => Get.snackbar(
            "Success", "Your account has been created",
            snackPosition: SnackPosition.BOTTOM,
            colorText: appcolor,
            backgroundColor: successful))
        .catchError((error) {
      Get.snackbar(error.toString(), "Something went wrong , try agin",
          snackPosition: SnackPosition.BOTTOM,
          colorText: appcolor,
          backgroundColor: errorColor);
      throw error;
    });
  }

  Future<void> updateUser(UserModel user) async {
    await _db.collection('User').doc(user.id).update(user.tojason());
  }

  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection('User').where('Email', isEqualTo: email).get();
    final userdata = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;

    return userdata;
  }

  Future<bool> isEmailTaken(String email) async {
    try {
      final emailExits =
          await _db.collection('User').where('Email', isEqualTo: email).get();
      return emailExits.docs.isNotEmpty;
    } catch (error) {
      Get.snackbar(error.toString(), "Something went wrong , try agin",
          snackPosition: SnackPosition.BOTTOM,
          colorText: appcolor,
          backgroundColor: errorColor);
      return false;
    }
  }
}
