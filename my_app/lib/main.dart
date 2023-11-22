import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/config/routes/app_route.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/onboard/presention/pages/onboard_page.dart';
import 'package:my_app/features/regitser/presention/getx/register_controller.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(RegisterController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Orange E-commerce',
      theme: ThemeData(colorScheme: ColorScheme.light(primary: appcolor)),
      initialRoute: AppRoutes.onBoard,
      getPages: AppRoutes.routes,
      home: const OnboardPage(),
    );
  }
}
