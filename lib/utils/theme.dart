import 'package:flutter/material.dart';
import 'package:foodies/utils/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kSecondaryLightColor,
    fontFamily: 'Avenir',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kSecondaryColor),
    bodyText2: TextStyle(color: kSecondaryColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kSecondaryLightColor,
    elevation: 0,
    iconTheme: IconThemeData(color: kSecondaryColor),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kSecondaryColor,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: kLightGrey),
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 30),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
