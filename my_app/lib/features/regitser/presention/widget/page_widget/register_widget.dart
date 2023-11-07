import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/presention/getx/register_controller.dart';
import 'package:my_app/features/regitser/presention/widget/appbar_widgets/register_appbar.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/containers_widget/continue_container.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/form_widgets/form_widget.dart';
import 'package:my_app/features/regitser/presention/widget/widgets_collection/text_widget/from_text/from_text.dart';
import 'package:my_app/test/test.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 300,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return FormWidget(form: textinputs[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 50);
                    },
                    itemCount: textinputs.length),
              ),
              const SizedBox(height: 50),
              mainContainer(() => Get.to(HomeWidget()))
            ],
          ),
        ),
      ),
    );
  }
}
