import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenwidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: kTextColor),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenwidth(235),
        )
      ],
    );
  }
}
