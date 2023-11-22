// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:my_app/core/contsants/constants.dart';
import 'package:my_app/features/regitser/data/models/textinput_model.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({required this.form, Key? key}) : super(key: key);
  final Textinput form;

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
          filled: false,
          fillColor: pagecolor,
        )),
        child: TextFormField(
            readOnly: widget.form.enableText,
            inputFormatters: widget.form.inputFormat,
            keyboardType: widget.form.type,
            onChanged: widget.form.onChange,
            validator: widget.form.validator,
            obscureText: widget.form.invisible,
            controller: widget.form.controller,
            decoration: InputDecoration(
              label: Text(widget.form.title),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: pagecolor),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              suffixIcon: widget.form.icon,
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: pagecolor),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              hintText: widget.form.hintText,
            )),
      ),
    );
  }
}
