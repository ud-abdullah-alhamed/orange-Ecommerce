import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login {
  TextEditingController controller = TextEditingController();
  String hintText;
  Icon icon;
  bool invisible;
  bool enableText;
  String title;

  final String? Function(String?)? validator;
  TextInputType type;
  void Function(String?)? onChange;
  List<TextInputFormatter>? inputFormat;
  Login({
    required this.title,
    required this.controller,
    required this.enableText,
    required this.hintText,
    required this.icon,
    required this.invisible,
    required this.validator,
    required this.type,
    required this.onChange,
    required this.inputFormat,
  });
}
