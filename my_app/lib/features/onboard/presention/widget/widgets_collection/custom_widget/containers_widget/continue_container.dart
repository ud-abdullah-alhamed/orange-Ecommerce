import 'package:flutter/material.dart';
import 'package:my_app/core/contsants/constants.dart';

Column mainContainer(VoidCallback callback) {
  return Column(
    children: [
      GestureDetector(
        onTap: callback,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              color: primaryColor),
          child: Center(
              child: Text(
            containerLabel,
            style: TextStyle(
                color: pagecolor, fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    ],
  );
}
