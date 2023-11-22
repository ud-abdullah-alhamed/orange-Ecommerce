import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/dashboard/presention/getx/offers_controller.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/offers_container.dart';

class Offerswidget extends GetView<OffersController> {
  const Offerswidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OffersController());
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return offersContainer(controller.offers[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 20);
          },
          itemCount: controller.offers.length),
    );
  }
}
