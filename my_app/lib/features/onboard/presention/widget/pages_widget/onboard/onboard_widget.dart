import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/presention/pages/register_page.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/containers_widget/continue_container.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/slider/slider_widget.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/text_widgets/text_widgets/text_widgets.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pagecolor,
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: horizontalsize, vertical: verticalsize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText.titleText(onboardTitle),
              AppText.bodyText(onboardwelcame),
              const SizedBox(height: 100),
              SliderWidget(item: imgeList),
              Expanded(child: Container()),
              mainContainer(() => Get.to(RegisterPage()))
            ],
          ),
        ),
      ),
    );
  }
}
