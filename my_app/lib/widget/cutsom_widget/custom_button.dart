import 'package:flutter/material.dart';
import 'package:my_app/constant/color.dart';

Column mainContainer() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            color: ColorConstants.mainScaffoldBackgroundColor),
        child: Center(
            child: Text(
          'Continue',
          style: TextStyle(
              color: ColorConstants.textfiledColor,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}
