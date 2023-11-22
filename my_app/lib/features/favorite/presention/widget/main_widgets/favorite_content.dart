import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/favorite/presention/widget/widget_collection/favoriteproduct.dart';
import 'package:my_app/features/favorite/presention/widget/widget_collection/no_favoriteProducts.dart';

class Favorite {
  static favoriteText(String title) {
    Text(title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: deepsubcolor,
            fontSize: 14,
          ),
        ));
  }

  static NoFavoirteProduct noFavoirteProduct() {
    return const NoFavoirteProduct();
  }

  static FavoirteProduct favoirteProduct() {
    return const FavoirteProduct();
  }
}
