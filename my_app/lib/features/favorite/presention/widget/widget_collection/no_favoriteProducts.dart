// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/features/favorite/presention/widget/main_widgets/favorite_content.dart';

class NoFavoirteProduct extends StatelessWidget {
  const NoFavoirteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Favorite.favoriteText('No favorite products yet.'),
    );
  }
}
