import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/presention/getx/register_controller.dart';
import 'package:my_app/features/regitser/presention/getx/regitser_icon.dart';
import 'package:my_app/features/regitser/presention/widget/appbar_widgets/register_appbar.dart';
import 'package:my_app/features/regitser/presention/widget/widgets_collection/main_widget/register_content.dart';
import 'package:my_app/features/regitser/presention/widget/widgets_collection/text_widget/from_text/from_text.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterItem());
    Get.put(RegisterController());

    return Scaffold(
      appBar: RegisterAppBar(),
      backgroundColor: pagecolor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              RegisterText.titleText(registerTitle),
              RegisterText.bodyText(registercontent),
              RegisterText.bodyText(registersubcontent),
              const SizedBox(height: 50),
              const Register()
            ],
          ),
        ),
      ),
    );
  }
}
