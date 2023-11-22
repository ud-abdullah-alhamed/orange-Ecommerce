import 'package:flutter/material.dart';

class FavoriteAppBar extends AppBar {
  FavoriteAppBar({super.key});

  @override
  Widget? get leading => AppBar(
        title: const Text(
          'Favorite Products',
          style: TextStyle(color: Colors.blueAccent),
        ),
      );
}
