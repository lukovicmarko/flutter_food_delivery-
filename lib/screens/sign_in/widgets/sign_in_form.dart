import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/provider/logo_provider.dart';
import 'package:foodies/screens/home/home_screen.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';
import 'package:foodies/widgets/default_button.dart';
import 'package:provider/provider.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  bool _showPassword = true;
  bool _isActive = false;
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  void _showLogo() {
    final _isVisible = Provider.of<LogoProvider>(context);

    if (_emailFocusNode.hasFocus || _passwordFocusNode.hasFocus) {
      _isVisible.isVisibleFalse();
    } else {
      _isVisible.isVisibleTrue();
    }
  }

  @override
  void initState() {
    _emailFocusNode.addListener(_showLogo);
    _passwordFocusNode.addListener(_showLogo);
    super.initState();
  }

  @override
  void dispose() {
    _emailFocusNode.removeListener(_showLogo);
    _emailFocusNode.dispose();
    _passwordFocusNode.removeListener(_showLogo);
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                SizedBox(height: 5),
                TextFormField(focusNode: _emailFocusNode),
                SizedBox(height: 30),
                Text('Password'),
                SizedBox(height: 5),
                TextFormField(
                  focusNode: _passwordFocusNode,
                  obscureText: _showPassword,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(12)),
                        child: SvgPicture.asset(
                          "assets/icons/eye.svg",
                          width: getProportionateScreenWidth(5),
                          height: getProportionateScreenHeight(5),
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(2),
              right: getProportionateScreenWidth(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _isActive,
                      activeColor: kSecondaryColor,
                      onChanged: (newValue) {
                        setState(() {
                          _isActive = newValue;
                        });
                      },
                    ),
                    Text('Remember me'),
                  ],
                ),
                Text('Forgot password?'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: DefaultButton(
              text: 'Log In',
              onPress: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
          )
        ],
      ),
    );
  }
}
