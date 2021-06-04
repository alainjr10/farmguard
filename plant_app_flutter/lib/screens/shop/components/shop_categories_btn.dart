import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class ShopCategoriesBtn extends StatelessWidget {
  ShopCategoriesBtn({
    required this.btnText,
    required this.btnOnTapped,
    required this.imageUrl,
  });
  final String btnText;
  final Function() btnOnTapped;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnOnTapped,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.30,
        height: 100.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('$imageUrl'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.dstATop,
            ),
          ),
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: kPestsButtonTextStyle.copyWith(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
