import 'package:flutter/material.dart';
import 'package:my_app/constant/color.dart';
import 'package:my_app/model/form_model.dart';
import 'package:my_app/widget/cutsom_widget/custom_button.dart';
import 'package:my_app/widget/cutsom_widget/form_widget.dart';
import 'package:my_app/widget/regitser_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();

    TextEditingController password = TextEditingController();
    TextEditingController confirm = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 90),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Register Data',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'complete your details to continue ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    const Text(
                      'With socail media ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Register.regitserForm(Login(
                        controller: email,
                        enableText: false,
                        hintText: 'Enter your Email',
                        icon: Icon(
                          Icons.email,
                          color: ColorConstants.iconColor,
                        ),
                        invisible: false,
                        validator: null,
                        type: TextInputType.emailAddress,
                        onChange: null,
                        inputFormat: [],
                        title: 'Email')),
                    Register.regitserForm(Login(
                        controller: password,
                        enableText: false,
                        hintText: 'Enter your password',
                        icon: Icon(
                          Icons.lock,
                          color: ColorConstants.iconColor,
                        ),
                        invisible: false,
                        validator: null,
                        type: TextInputType.visiblePassword,
                        onChange: null,
                        inputFormat: [],
                        title: 'password')),
                    Register.regitserForm(Login(
                        controller: confirm,
                        enableText: false,
                        hintText: 'Re-enter Password',
                        icon: Icon(
                          Icons.lock,
                          color: ColorConstants.iconColor,
                        ),
                        invisible: false,
                        validator: null,
                        type: TextInputType.visiblePassword,
                        onChange: null,
                        inputFormat: [],
                        title: 'Confirm Password')),
                    mainContainer()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
