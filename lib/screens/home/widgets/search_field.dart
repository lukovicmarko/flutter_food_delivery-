import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/screens/home/widgets/filter.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 45,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(top: getProportionateScreenWidth(10)),
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    width: getProportionateScreenWidth(15),
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ),
          ),
          Filter()
        ],
      ),
    );
  }
}
