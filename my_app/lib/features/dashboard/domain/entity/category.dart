// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Categoryentity extends Equatable {
  late VoidCallback callback;
  late String title;
  late String iconData;

  Categoryentity(
      {required this.callback, required this.title, required this.iconData});

  @override
  List<Object?> get props {
    return [callback, title, iconData];
  }
}
