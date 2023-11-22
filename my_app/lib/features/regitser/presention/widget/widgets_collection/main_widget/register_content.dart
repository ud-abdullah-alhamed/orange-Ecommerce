import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/nav_bar/presention/widget/main_widget.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/containers_widget/continue_container.dart';
import 'package:my_app/features/regitser/presention/getx/regitser_icon.dart';
import 'package:my_app/features/regitser/presention/widget/widgets_collection/custom_widget/form_widgets/form_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterItem());

    return Column(
      children: [
        SizedBox(
          height: 300,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return FormWidget(form: controller.textinputs[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 50);
              },
              itemCount: controller.textinputs.length),
        ),
        const SizedBox(height: 50),
        mainContainer(() {
          // registerController.signup(UserModel(
          //     email: registerController.email.text.trim(),
          //     password: registerController.password.text.trim(),
          //     imageUrl: ''));

          Get.to(const MainPage());
        })
      ],
    );
  }
}
