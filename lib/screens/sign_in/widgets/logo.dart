import 'package:flutter/material.dart';
import 'package:foodies/utils/size_config.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(50),
      left: (SizeConfig.screenWidth - getProportionateScreenWidth(100)) * 0.5,
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: getProportionateScreenWidth(100),
          ),
          SizedBox(height: 8),
          Text(
            'Foodies',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
