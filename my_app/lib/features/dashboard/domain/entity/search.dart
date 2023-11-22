// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SearchFormEntitiy extends Equatable {
  TextEditingController searchController = TextEditingController();
  String hintText;
  Icon icon;

  TextInputType type;
  void Function(String?)? onChange;

  SearchFormEntitiy({
    required this.searchController,
    required this.hintText,
    required this.icon,
    required this.type,
    required this.onChange,
  });

  @override
  List<Object?> get props {
    return [searchController, hintText, icon, type, onChange];
  }
}
