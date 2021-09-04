import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/splash/components/form_error.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Text(
            "Forgot Password",
            style: TextStyle(
                fontSize: getProportionateScreenwidth(
                  28,
                ),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Text(
            "Please enter your email and we will send \nyou a link to return to your account",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          ForgetPassForm()
        ],
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  @override
  _ForgetPassFormState createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              TextFormField(
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.remove(kEmailNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kInvalidEmailError)) {
                    {
                      setState(() {
                        errors.remove(kInvalidEmailError);
                      });
                    }
                  }
                },
                validator: (value) {
                  if (value.isEmpty && !errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.add(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kInvalidEmailError)) {
                    {
                      setState(() {
                        errors.add(kInvalidEmailError);
                      });
                    }
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "Email",
                  hintText: "enter your email",
                  suffixIcon: CustomSurrfixIcon(
                    svgIcon: "assets/icons/Mail.svg",
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              FormError(errors: errors),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState.validate()) {
                    //
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
