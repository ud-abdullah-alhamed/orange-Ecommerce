// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/circle_widget.dart';
import 'package:my_app/features/dashboard/presention/widgets/widget_collection/category_list.dart';
import 'package:my_app/features/dashboard/presention/widgets/widget_collection/cupon_widget.dart';
import 'package:my_app/features/dashboard/presention/widgets/widget_collection/offers_widget.dart';
import 'package:my_app/features/dashboard/presention/widgets/widget_collection/products_widget.dart';
import 'package:my_app/features/dashboard/presention/widgets/widget_collection/searhbar_widget.dart';

class Dashboard {
  static mainText(String title) {
    return Text(title,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: pagecolor, fontSize: 30, fontWeight: FontWeight.bold)));
  }

  static secondText(String title) {
    return Text(title,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          color: pagecolor,
          fontSize: 18,
        )));
  }

  static categoryText(String title) {
    return Text(title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: deepsubcolor,
            fontSize: 14,
          ),
        ));
  }

  static productTitlte(title) {
    return Text(
      title,
      style: TextStyle(
          color: backIconButton, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }

  static productPrice(title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: primaryColor, fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }

  static offercontainerTitle(String title) {
    return Text(title,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: pagecolor, fontSize: 30, fontWeight: FontWeight.bold)));
  }

  static offercontainerSubText(String title) {
    return Text(title,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          color: pagecolor,
          fontSize: 18,
        )));
  }

  static GestureDetector offerSubTitle(String title, VoidCallback callback) {
    return GestureDetector(
      onTap: callback,
      child: Text(title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: backIconButton,
              fontSize: 14,
            ),
          )),
    );
  }

  static Text offerTitle(String title) {
    return Text(title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: backIconButton,
            fontSize: 18,
          ),
        ));
  }

  static Row hiderWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 100,
          width: 220,
          child: searchBarWidget(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: circleContainer(
            () => null,
            CupertinoIcons.bell,
          ),
        ),
        SizedBox(
            width: 50,
            height: 50,
            child: circleContainer(
              () => null,
              CupertinoIcons.cart,
            ))
      ],
    );
  }

  static Couponwidget couponContainer() {
    return const Couponwidget();
  }

  static CategoryWidget categoryWidget() {
    return const CategoryWidget();
  }

  static Row offersTtitle() {
    return Row(
      children: [
        Dashboard.offerTitle(offersTitle),
        Expanded(child: Container()),
        Dashboard.offerSubTitle(seemore, () => null)
      ],
    );
  }

  static Offerswidget offerswidget() {
    return const Offerswidget();
  }

  static Row productsTitle() {
    return Row(
      children: [
        Dashboard.offerTitle(productTilte),
        Expanded(child: Container()),
        Dashboard.offerSubTitle(seemore, () => null)
      ],
    );
  }

  static Productwidget productwidget() {
    return const Productwidget();
  }
}
