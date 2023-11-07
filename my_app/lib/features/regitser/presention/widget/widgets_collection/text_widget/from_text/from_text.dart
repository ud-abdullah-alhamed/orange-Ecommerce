import 'package:flutter/material.dart';
import 'package:my_app/core/contsants/constants.dart';

class RegisterText {
  static Text titleText(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 42, fontWeight: FontWeight.w400, color: primaryColor),
    );
  }

  static Text bodyText(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
    );
  }
}
