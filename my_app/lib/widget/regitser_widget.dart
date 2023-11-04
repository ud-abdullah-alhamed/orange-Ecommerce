import 'package:flutter/material.dart';
import 'package:my_app/model/form_model.dart';
import 'package:my_app/widget/cutsom_widget/form_widget.dart';

class Register {
  static Column regitserForm(Login login) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        FormWidget(
          login: login,
        )
      ],
    );
  }
}
