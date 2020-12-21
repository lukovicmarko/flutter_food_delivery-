import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

AppBar buildHomeAppBar(context) {
  return AppBar(
    backgroundColor: kPrimaryLightColor,
    leading: Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(
            Icons.menu,
          ),
        );
      },
    ),
    actions: <Widget>[
      SvgPicture.asset(
        "assets/icons/shopping-bag.svg",
        width: getProportionateScreenWidth(22),
        color: kSecondaryColor,
      ),
      SizedBox(
        width: getProportionateScreenWidth(10),
      )
    ],
  );
}
