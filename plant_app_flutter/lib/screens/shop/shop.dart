import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/shop/components/shop_categories.dart';
import 'package:plant_app_flutter/screens/shop/components/top_agricultural_products.dart';

class Shop extends StatelessWidget {
  const Shop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _padding = MediaQuery.of(context).size.width * 0.025;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: ListView(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text(
                'Categories',
                style: kButtonTextStyle,
              ),
            ),
          ),

          //this is where all the categories btn appear
          ShopCategories(padding: _padding),
          ShopHeadings(
            headingTitle: 'Top Agricultural Products',
            onBtnPressed: () {},
          ),
          TopAgriculturalProducts(padding: _padding),
          ShopHeadings(
            headingTitle: 'Top Agricultural Inputs',
            onBtnPressed: () {},
          ),
          TopAgriculturalProducts(padding: _padding),

          ShopHeadings(
            headingTitle: 'Top Agricultural Equipments',
            onBtnPressed: () {},
          ),
          TopAgriculturalProducts(padding: _padding),
        ],
      ),
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text(
                'SELL',
                style: kButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ShopHeadings extends StatelessWidget {
  const ShopHeadings({required this.headingTitle, required this.onBtnPressed});

  final String headingTitle;
  final Function() onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headingTitle,
              style: kButtonTextStyle,
            ),
            TextButton(
              onPressed: onBtnPressed,
              child: Text(
                'See All',
                style: kButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
