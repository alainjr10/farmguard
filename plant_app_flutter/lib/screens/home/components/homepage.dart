import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/home/components/body.dart';
import 'package:plant_app_flutter/screens/home/home_screen.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
