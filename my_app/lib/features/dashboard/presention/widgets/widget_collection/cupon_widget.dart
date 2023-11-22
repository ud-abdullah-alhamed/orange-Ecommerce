import 'package:flutter/material.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';

class Couponwidget extends StatelessWidget {
  const Couponwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 110,
      decoration: BoxDecoration(
          color: dashboardcolor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Dashboard.secondText(maincouponText),
            Dashboard.mainText(seconedcouponText),
          ],
        ),
      ),
    );
  }
}
