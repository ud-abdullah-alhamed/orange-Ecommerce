// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:my_app/constant/color.dart';
import 'package:my_app/model/form_model.dart';

class FormWidget extends StatefulWidget {
  FormWidget({required this.login, Key? key}) : super(key: key);
  Login login;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorConstants.textfiledColor,
        )),
        child: TextFormField(
            readOnly: widget.login.enableText,
            inputFormatters: widget.login.inputFormat,
            keyboardType: widget.login.type,
            onChanged: widget.login.onChange,
            validator: widget.login.validator,
            obscureText: widget.login.invisible,
            controller: widget.login.controller,
            decoration: InputDecoration(
              label: Text(widget.login.title),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.secondaryScaffoldBacground),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              suffixIcon: widget.login.icon,
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.secondaryScaffoldBacground),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              hintText: widget.login.hintText,
            )),
      ),
    );
  }
}
