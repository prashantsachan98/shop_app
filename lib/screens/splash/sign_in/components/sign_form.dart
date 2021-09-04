import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/forgot_password_button.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';

import 'package:shop_app/screens/splash/components/form_error.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              ForgotPassword()
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                //if all data is valid
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length <= 8 && !errors.contains(kShortPassError)) {
          {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length <= 8 && !errors.contains(kShortPassError)) {
          {
            setState(() {
              errors.add(kShortPassError);
            });
          }
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "enter your password",
          suffixIcon: CustomSurrfixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}
