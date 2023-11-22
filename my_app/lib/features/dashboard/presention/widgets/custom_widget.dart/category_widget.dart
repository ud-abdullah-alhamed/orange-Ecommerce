import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';

import '../../../data/model/category_model.dart';

Column categoryWidget(CategoryModel category) {
  return Column(
    children: [
      GestureDetector(
        onTap: category.callback,
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFEECE2),
          ),
          child: Center(child: SvgPicture.asset(category.iconData)),
        ),
      ),
      Dashboard.categoryText(category.title)
    ],
  );
}
