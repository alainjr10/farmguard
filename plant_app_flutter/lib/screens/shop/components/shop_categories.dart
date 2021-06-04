import 'package:flutter/material.dart';
import 'shop_categories_btn.dart';

class ShopCategories extends StatelessWidget {
  const ShopCategories({
    Key? key,
    required double padding,
  })  : _padding = padding,
        super(key: key);

  final double _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: _padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShopCategoriesBtn(
            btnText: "Agricultural Products",
            btnOnTapped: () {},
            imageUrl: 'assets/images/tomato_small.jpg',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.020,
          ),
          ShopCategoriesBtn(
            btnText: "Agricultural Inputs",
            btnOnTapped: () {},
            imageUrl: 'assets/images/fertiliser2.jpg',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.020,
          ),
          ShopCategoriesBtn(
            btnText: "Agricultural Equipments",
            btnOnTapped: () {},
            imageUrl: 'assets/images/machine_small.jpg',
          ),
        ],
      ),
    );
  }
}
