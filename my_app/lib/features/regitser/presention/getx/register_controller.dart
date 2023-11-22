import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/core/usecases/authentication/authentication.dart';
import 'package:my_app/core/usecases/user_repository/user_repository.dart';
import 'package:my_app/features/nav_bar/presention/widget/main_widget.dart';
import 'package:my_app/features/regitser/data/models/user_model.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final fromkey = GlobalKey<FormState>();

  void userRegister(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await UserRepository.instance.createUser(user);
    Get.to(const MainPage());
  }

  vaildateEmail(String? email) {
    if (GetUtils.isEmail(email!)) {
      return null;
    }
    return 'Email is not vaild';
  }

  vaildatePassword(String? password) {
    if (!GetUtils.isLengthGreaterOrEqual(password, 6)) {
      return 'Password is not vaild';
    }
    return null;
  }

  Future<void> signup(UserModel user) async {
    if (fromkey.currentState!.validate()) {
      Future<bool> createfirebaseUser = AuthenticationRepository.instance
          .createUserWithEmailAndPassword(user.email, user.password);
      if (await createfirebaseUser) {
        createUser(user);
        Get.snackbar("Success", " Account  Created Successfullly",
            snackPosition: SnackPosition.BOTTOM,
            colorText: appcolor,
            backgroundColor: successful);
      }
    } else {
      Get.snackbar("Success", " Account  Created Successfullly",
          snackPosition: SnackPosition.BOTTOM,
          colorText: appcolor,
          backgroundColor: successful);
    }
  }
}
