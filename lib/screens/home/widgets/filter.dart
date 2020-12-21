import 'package:flutter/material.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(35),
      height: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
