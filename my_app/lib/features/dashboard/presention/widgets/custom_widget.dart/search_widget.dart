// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/dashboard/data/model/search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({required this.search, Key? key}) : super(key: key);
  final SearchModel search;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
        )),
        child: TextFormField(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: backIconButton),
            ),
            cursorColor: Colors.grey[700],
            keyboardType: widget.search.type,
            onChanged: widget.search.onChange,
            controller: widget.search.searchController,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: TextStyle(color: backIconButton),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: pagecolor),
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              prefixIcon: widget.search.icon,
              prefixIconColor: Colors.grey[700],
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: pagecolor),
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              hintText: widget.search.hintText,
            )),
      ),
    );
  }
}
