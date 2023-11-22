// ignore_for_file: must_be_immutable

import 'package:my_app/features/dashboard/domain/entity/search.dart';

class SearchModel extends SearchFormEntitiy {
  SearchModel(
      {required super.searchController,
      required super.hintText,
      required super.icon,
      required super.type,
      required super.onChange});
}
