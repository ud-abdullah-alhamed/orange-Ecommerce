import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/search_model.dart';
import 'package:my_app/features/dashboard/presention/getx/search_controller.dart';
import 'package:my_app/features/dashboard/presention/widgets/custom_widget.dart/search_widget.dart';

SearchWidget searchBarWidget() {
  final controller = Get.put(SearchFiledController());
  return SearchWidget(
    search: SearchModel(
        searchController: controller.searchController,
        hintText: controller.hintText,
        icon: controller.icon,
        type: controller.textinput,
        onChange: null),
  );
}
