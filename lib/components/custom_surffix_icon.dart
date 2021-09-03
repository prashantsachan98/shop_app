import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSurrfixIcon extends StatelessWidget {
  const CustomSurrfixIcon({Key key, @required this.svgIcon}) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenwidth(20),
        getProportionateScreenwidth(20),
        getProportionateScreenwidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}