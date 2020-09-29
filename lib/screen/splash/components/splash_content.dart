import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.title,
    this.image,
    this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1),
        Text(this.title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold)),
        Text(this.subTitle),
        Spacer(flex: 2),
        Image.asset(
          this.image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
