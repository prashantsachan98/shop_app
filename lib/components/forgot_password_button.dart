import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgot_password/components/forgot_password_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        "Forgot Password",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () =>
          Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
    );
  }
}
