import 'package:flutter/material.dart';

import 'package:shop_app/screens/otp/compnents/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP verification',
        ),
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
