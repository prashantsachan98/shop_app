import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
          width: double.infinity,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.12,
        ),
        Text(
          "Login Success",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        )
      ],
    );
  }
}
