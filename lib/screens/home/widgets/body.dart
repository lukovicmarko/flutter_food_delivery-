import 'package:flutter/material.dart';
import 'package:foodies/screens/home/widgets/home_categories.dart';
import 'package:foodies/screens/home/widgets/search_field.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: kPrimaryLightColor,
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                ),
                child: Column(
                  children: [
                    SearchField(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
          ],
        ),
        HomeCategories(),
      ],
    );
  }
}
