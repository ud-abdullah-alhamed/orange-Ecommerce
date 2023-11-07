import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/onboard/presention/pages/onboard_page.dart';
import 'package:my_app/features/regitser/presention/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Example',
      theme: ThemeData(colorScheme: ColorScheme.light(primary: appcolor)),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const OnboardPage()),
        GetPage(name: '/Register', page: () => const RegisterPage()),
      ],
      home: const OnboardPage(),
    );
  }
}
