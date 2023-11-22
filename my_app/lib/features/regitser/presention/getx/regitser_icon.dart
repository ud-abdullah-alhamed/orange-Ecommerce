import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/data/models/textinput_model.dart';
import 'package:my_app/features/regitser/data/models/user_model.dart';
import 'package:my_app/features/regitser/presention/getx/register_controller.dart';

class RegisterItem extends GetxController {
  static RegisterItem get instance => Get.find();

  // register List

  List<Textinput> textinputs = [
    Textinput(
        controller: RegisterController.instance.email,
        enableText: false,
        hintText: 'Enter your Email',
        icon: const Icon(Icons.email),
        invisible: false,
        validator: (email) => RegisterController.instance.vaildateEmail(email),
        type: TextInputType.emailAddress,
        onChange: null,
        inputFormat: const [],
        title: email),
    Textinput(
        controller: RegisterController.instance.password,
        enableText: false,
        hintText: 'Enter your Password',
        icon: const Icon(Icons.lock),
        invisible: false,
        validator: (password) =>
            RegisterController.instance.vaildatePassword(password),
        type: TextInputType.visiblePassword,
        onChange: null,
        inputFormat: const [],
        title: password),
    Textinput(
        controller: RegisterController.instance.confirmPassword,
        enableText: false,
        hintText: 'Re-enter your password',
        icon: const Icon(Icons.lock),
        invisible: false,
        validator: null,
        type: TextInputType.visiblePassword,
        onChange: null,
        inputFormat: const [],
        title: confirmPassword),
  ];

  onsignup(UserModel user) {
    RegisterController.instance.signup(user);
  }
}
