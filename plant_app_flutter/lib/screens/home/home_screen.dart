import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_flutter/screens/home/components/body.dart';

import '../../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: Text('Home', style: kTitleTextStyle),
        actions: [
          RightSideIcons(
            anIcon: Icons.search,
          ),
          RightSideIcons(
            anIcon: Icons.notifications,
          ),
          RightSideIcons(
            anIcon: Icons.account_circle_sharp,
          ),
        ],
      ),
      body: Body(),
    );
  }
}

class RightSideIcons extends StatelessWidget {
  RightSideIcons({required this.anIcon});
  //final Widget iconName;
  final IconData anIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          anIcon,
          size: 26.0,
        ),
      ),
    );
  }
}
