import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopAgriculturalProducts extends StatelessWidget {
  const TopAgriculturalProducts({
    Key? key,
    required double padding,
  })  : _padding = padding,
        super(key: key);

  final double _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: _padding * 1.4),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(right: 20.0),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopAgriculturalProductCard(
              title: 'Fresh Ripe Tomato',
              price: 3400,
              quantity: 'One Basket',
              date: '12 jan 2021',
              onCardTapped: () {},
              imageUrl: 'assets/images/agricultural_products/freshtomato1.jpg',
            ),
            TopAgriculturalProductCard(
              title: 'Fresh Ripe Tomato tomato tomato',
              price: 3400,
              quantity: 'One Basket',
              date: '12 jan 2021',
              onCardTapped: () {},
              imageUrl: 'assets/images/agricultural_products/freshtomato2.jpg',
            ),
            TopAgriculturalProductCard(
              title: 'Fresh Ripe Tomato tomato tomato',
              price: 3400,
              quantity: 'One Basket',
              date: '12 jan 2021',
              onCardTapped: () {},
              imageUrl: 'assets/images/agricultural_products/freshtomato1.jpg',
            ),
            TopAgriculturalProductCard(
              title: 'Fresh Ripe Tomato tomato tomato',
              price: 3400,
              quantity: 'One Basket',
              date: '12 jan 2021',
              onCardTapped: () {},
              imageUrl: 'assets/images/agricultural_products/freshtomato2.jpg',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
            ),
          ],
        ),
      ),
    );
  }
}

class TopAgriculturalProductCard extends StatelessWidget {
  const TopAgriculturalProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.quantity,
    required this.date,
    required this.price,
    required this.onCardTapped,
  }) : super(key: key);

  final String imageUrl, title, quantity, date;
  final int price;
  final Function() onCardTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTapped,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              offset: Offset(2.0, 4.0),
              color: Colors.grey.shade400,
              spreadRadius: 3.0,
            )
          ],
        ),
        margin: EdgeInsets.only(right: 10, bottom: 20.0),
        width: MediaQuery.of(context).size.width * 0.40,
        height: 240.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              height: 125,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$imageUrl'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kMiniHeaderTextStyle.copyWith(fontSize: 14.0),
                  ),
                  Text(
                    'XAF $price',
                    style: kPlotPriceTextStyle.copyWith(fontSize: 13),
                  ),
                  Text(
                    'Qty: $quantity',
                    style: kMiniHeaderTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    date,
                    style: kLocationTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
