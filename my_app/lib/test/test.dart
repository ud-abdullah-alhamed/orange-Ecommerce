import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/test/container_widget/contianer.dart';

class ColorConstants {
  static Color mainScaffoldBackgroundColor = const Color(0xffffffff);
  static Color mainTextColor = const Color(0xffFF7643);
  static Color subTextColor = const Color.fromARGB(108, 0, 0, 0);
  static Color blackTextColor = const Color.fromARGB(255, 0, 0, 0);
  static Color? borderColor = Colors.grey[200];
  static Color couponColor = const Color(0xff4B3298);
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          18.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchBar(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorConstants.borderColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      CupertinoIcons.cart,
                      color: ColorConstants.subTextColor,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorConstants.borderColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      CupertinoIcons.bell,
                      color: ColorConstants.subTextColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              couponContainer(),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  optionWidget('Flash \nDeal', "assets/icons/Flash Icon.svg"),
                  optionWidget('Bill\n', "assets/icons/Bill Icon.svg"),
                  optionWidget('Game\n', "assets/icons/Game Icon.svg"),
                  optionWidget('Daily \nGift', "assets/icons/Gift Icon.svg"),
                  optionWidget('More\n', "assets/icons/Plus Icon.svg"),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeMainText("Special for you"),
                  GestureDetector(
                    child: optionText("see more"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 350,
                    height: 120,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      specialContainer("assets/Image Banner 2.png",
                          "SmartPhone", "18 Brand"),
                      const SizedBox(
                        width: 10,
                      ),
                      specialContainer(
                          "assets/Image Banner 3.png", "Fashion", "24 Brand"),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeMainText("Popular Product"),
                  GestureDetector(
                    child: optionText("see more"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                width: 374,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  productWidget("assets/Image Popular Product 1.png",
                      "Wireless Controller\nfor PS4", "64.99"),
                  const SizedBox(
                    width: 15,
                  ),
                  productWidget("assets/Image Popular Product 2.png",
                      "Nike Sport White -\nMen Pant", "50.5"),
                  const SizedBox(
                    width: 15,
                  ),
                  productWidget("assets/Image Popular Product 3.png",
                      "Wireless Controller\nfor PS4", "64.99"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox searchBar() {
  return SizedBox(
    width: 220,
    height: 50,
    child: TextField(
        decoration: InputDecoration(
      hintText: 'Search Product',
      prefixIcon: const Icon(Icons.search, color: Colors.grey),
      filled: true,
      fillColor: Colors.grey[200],
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    )),
  );
}

couponContainer() {
  return Container(
    width: 350,
    height: 110,
    decoration: BoxDecoration(
        color: ColorConstants.couponColor,
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          couponSecondText("A Summer Surpise"),
          couponMainText("Cashback 20%")
        ],
      ),
    ),
  );
}

Column optionWidget(String title, String icon) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffFEECE2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(icon),
        ),
      ),
      optionText(title),
    ],
  );
}

specialContainer(String image, String fTitle, String sTitle) {
  return SizedBox(
    width: 250,
    height: 120,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [couponMainText(fTitle), couponSecondText(sTitle)],
          ),
        )
      ],
    ),
  );
}

productWidget(String image, String fTitle, String sTitile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstants.borderColor),
        child: Image.asset(
          image,
          width: 100,
        ),
      ),
      productText(fTitle),
      priceText(sTitile)
    ],
  );
}
