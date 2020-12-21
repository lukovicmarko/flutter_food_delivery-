import 'package:flutter/material.dart';
import 'package:foodies/provider/logo_provider.dart';
import 'package:foodies/screens/sign_in/widgets/logo.dart';
import 'package:foodies/screens/sign_in/widgets/sign_in_form.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _isVisible = Provider.of<LogoProvider>(context).isVisible;
    return SafeArea(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(25),
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * .65,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SignForm(),
                ),
              ),
            ],
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
              child: Logo(),
            ),
          ),
        ],
      ),
    );
  }
}
