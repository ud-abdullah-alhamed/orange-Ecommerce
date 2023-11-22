// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:equatable/equatable.dart';

class TextinputEntity extends Equatable {
  String title;
  TextEditingController controller = TextEditingController();
  String hintText;
  Icon icon;
  bool invisible;
  bool enableText;
  String? Function(String?)? validator;
  TextInputType type;
  void Function(String?)? onChange;
  List<TextInputFormatter>? inputFormat;
  TextinputEntity(
      {required this.title,
      required this.controller,
      required this.enableText,
      required this.hintText,
      required this.icon,
      required this.invisible,
      required this.validator,
      required this.type,
      required this.onChange,
      required this.inputFormat});

  @override
  List<Object?> get props {
    return [
      title,
      controller,
      enableText,
    ];
  }
}
