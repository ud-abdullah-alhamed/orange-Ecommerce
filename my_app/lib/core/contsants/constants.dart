//on board Strings
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/features/onboard/data/models/textinput_model.dart';
import 'package:my_app/features/regitser/presention/getx/register_controller.dart';
import 'package:my_app/features/onboard/presention/widget/widgets_collection/custom_widget/slider/slider_container.dart';

String onboardTitle = 'TOKOTO';
String onboardwelcame = 'Welcome to TOKOTO , Let`s shop!';
// main container label
String containerLabel = 'Continue';
//register Strings
String registerTitle = 'Register Account';
String registercontent = 'Complete your details or continue with soical media';
String registersubcontent = 'with soical media';

String email = 'Email';
String password = 'Password';
String confirmPassword = 'confirm Password';
String agreeCondition = 'by contiuing your confirm that you agree';
// dashboard Strings
String searchint = 'Search product';
String adscontainerTitle = 'A summer suprise';
String adscontainercontent = 'Cashback 20%';
String categoryTilte = 'Special for you';
String productTilte = 'Popular Products';

// app colors
Color primaryColor = const Color(0xffFF7643);

Color dashboardcolor = const Color(0xff4B3298);

Color appcolor = const Color(0xffFEECE2);

Color pagecolor = const Color(0xffffffff);

Color backIconButton = const Color(0xff000000);

// sizes

double horizontalsize = 70;

double verticalsize = 30;

// on board List

List<SliderContainer> imgeList = const [
  SliderContainer(image: 'assets/splash_1.png'),
  SliderContainer(image: 'assets/splash_3.png'),
  SliderContainer(image: 'assets/splash_2.png')
];

// register List

final controller = Get.put(RegisterController());

List<Textinput> textinputs = [
  Textinput(
      controller: controller.email,
      enableText: false,
      hintText: 'Enter your Email',
      icon: const Icon(Icons.email),
      invisible: false,
      validator: null,
      type: TextInputType.emailAddress,
      onChange: null,
      inputFormat: [],
      title: email),
  Textinput(
      controller: controller.password,
      enableText: false,
      hintText: 'Enter your Password',
      icon: const Icon(Icons.lock),
      invisible: false,
      validator: null,
      type: TextInputType.visiblePassword,
      onChange: null,
      inputFormat: [],
      title: password),
  Textinput(
      controller: controller.confirmPassword,
      enableText: false,
      hintText: 'Re-enter your password',
      icon: const Icon(Icons.lock),
      invisible: false,
      validator: null,
      type: TextInputType.visiblePassword,
      onChange: null,
      inputFormat: [],
      title: confirmPassword),
];
