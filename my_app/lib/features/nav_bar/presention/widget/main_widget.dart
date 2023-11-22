import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/presention/pages/dashboard.dart';
import 'package:my_app/features/favorite/presention/pages/favoirite_screen.dart';
import 'package:my_app/features/nav_bar/presention/getx/mainpage_controller.dart';
import 'package:my_app/test/dav.dart';

import '../../../../test/test.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final List<Widget> widgetList = const [
    DashboardPage(),
    FavoriteScreen(),
    ProductLis(),
    FavPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainPageController());
    return SafeArea(
        child: Obx(() => Scaffold(
            body: Center(
              child: widgetList[controller.selectedIndex.value],
            ),
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: primaryColor,
                unselectedItemColor: backIconButton,
                onTap: (value) {
                  controller.selectedIndex.value = value;
                },
                currentIndex: controller.selectedIndex.value,
                items: controller.navbarItem))));
  }
}
