import 'package:flutter/material.dart';
import 'package:foodies/utils/size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({this.text, this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(465),
          width: double.infinity,
        ),
      ],
    );
  }
}
