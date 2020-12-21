import 'package:flutter/material.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({this.text, this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        color: kPrimaryColor,
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: TextStyle(
            color: kSecondaryColor,
            fontWeight: FontWeight.w800,
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
      ),
    );
  }
}
