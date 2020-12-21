import 'package:flutter/material.dart';
import 'package:foodies/screens/home/widgets/app_bar.dart';
import 'package:foodies/screens/home/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(context),
      body: Body(),
    );
  }
}
