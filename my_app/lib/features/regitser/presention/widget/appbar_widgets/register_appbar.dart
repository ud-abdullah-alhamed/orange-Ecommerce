import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';

class RegisterAppBar extends AppBar {
  RegisterAppBar({super.key});
  @override
  Widget? get leading => AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_sharp,
              color: backIconButton,
            )),
      );
}
