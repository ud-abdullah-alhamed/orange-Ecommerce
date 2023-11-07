import 'package:flutter/material.dart';
import 'package:my_app/core/contsants/constants.dart';

class AppText {
  static Text titleText(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.w400, color: primaryColor),
    );
  }

  static Text bodyText(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
    );
  }

  static Text microText(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey[200]),
    );
  }
}
