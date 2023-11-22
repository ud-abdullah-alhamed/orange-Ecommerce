import 'package:flutter/material.dart';

import '../../../../../core/contsants/constants.dart';

GestureDetector circleContainer(VoidCallback callback, IconData iconData) {
  return GestureDetector(
    onTap: callback,
    child: CircleAvatar(
      backgroundColor: subcolor,
      child: Icon(
        iconData,
        color: backIconButton,
      ),
    ),
  );
}
