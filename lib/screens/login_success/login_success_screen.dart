import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_sucsess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text(
          "Login success",
        ),
      ),
      body: Body(),
    );
  }
}
