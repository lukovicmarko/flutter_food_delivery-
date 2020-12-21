import 'package:flutter/material.dart';
import 'package:foodies/data/categories_data.dart';
import 'package:foodies/utils/size_config.dart';
import 'package:provider/provider.dart';

class HomeCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoriesData>(context).categories;
    return Positioned(
      top: SizeConfig.screenHeight * (1 / 6),
      child: Container(
        height: getProportionateScreenHeight(90),
        width: SizeConfig.screenWidth,
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  categories.length,
                  (index) => Container(
                    width: getProportionateScreenHeight(90),
                    height: getProportionateScreenHeight(90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(categories[index]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
