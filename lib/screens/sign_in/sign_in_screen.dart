import 'package:flutter/material.dart';
import 'package:foodies/screens/sign_in/widgets/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
