import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_flutter/screens/home/components/body.dart';
import 'package:plant_app_flutter/screens/home/components/botton_nav_bar.dart';

import '../../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
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
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -8),
              blurRadius: 15,
              color: kPrimaryColor.withOpacity(0.28),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 33,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.dashboard,
                  size: 33,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.pest_control,
                  size: 33,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.work_rounded,
                  size: 33,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.forum_rounded,
                  size: 33,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
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
