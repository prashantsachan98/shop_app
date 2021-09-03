import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    this.icon,
    this.press,
    Key key,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(10)),
        padding: EdgeInsets.all(getProportionateScreenwidth(12)),
        height: getProportionateScreenHeight(45),
        width: getProportionateScreenwidth(45),
        decoration:
            BoxDecoration(color: Color(0xFFFFF6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
