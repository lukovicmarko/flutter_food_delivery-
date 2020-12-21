import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/screens/sign_in/sign_in_screen.dart';
import 'package:foodies/screens/splash/widgets/splash_content.dart';
import 'package:foodies/utils/constants.dart';
import 'package:foodies/utils/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  PageController controller;
  List<Map<String, String>> splashData = [
    {
      "text": "All Favourite Food \nin One Place",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "Order From Your \nNearest Restaurant",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Enjoy Our Free \nDelivery",
      "image": "assets/images/splash_3.png",
    },
    {
      "text": "Easily Track Your \nOrder",
      "image": "assets/images/splash_4.png",
    },
  ];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                    if (currentPage == 3) {
                      return;
                    }
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      currentPage == 3
                          ? setState(() {
                              currentPage = 2;
                              if (controller.hasClients) {
                                controller.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              }
                            })
                          : Navigator.pushNamed(
                              context, SignInScreen.routeName);
                    },
                    child: Text(
                      currentPage == 3 ? 'Back' : 'Skip',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(15)),
                    child: Row(
                      children: List.generate(
                        splashData.length,
                        (index) => buildDots(index: index),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (currentPage == 3) {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                          return;
                        } else {
                          currentPage++;
                        }
                        if (controller.hasClients) {
                          controller.animateToPage(
                            currentPage,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      });
                    },
                    child: Container(
                      width: getProportionateScreenWidth(38),
                      height: getProportionateScreenHeight(48),
                      padding: EdgeInsets.all(currentPage == 3 ? 8 : 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: kPrimaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        currentPage == 3
                            ? "assets/icons/check.svg"
                            : "assets/icons/right-arrow.svg",
                        color: kSecondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: currentPage == index ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kLightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
