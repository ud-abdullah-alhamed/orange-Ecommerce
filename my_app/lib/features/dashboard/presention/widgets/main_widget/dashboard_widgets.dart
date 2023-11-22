import 'package:flutter/material.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Dashboard.hiderWidget(),
                  Dashboard.couponContainer(),
                  Dashboard.categoryWidget(),
                  Dashboard.offersTtitle(),
                  Dashboard.offerswidget(),
                  Dashboard.productsTitle(),
                  Dashboard.productwidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
