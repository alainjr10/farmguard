import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/home/components/news_and_announcements.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      height: size.height * 0.14,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hello Username',
                            style: kTitleTextStyle,
                          ),
                          Text(
                            'Thanks for using FarmGuard',
                            style: kButtonTextStyle,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  kPrimaryColor),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                'Go to Dashboard',
                                style: kButtonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //second section which contains teh icons in the menu section
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 5.0,
                      right: 10.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      'Menu',
                      style: kTitleTextStyle,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      left: 5,
                      top: 5.0,
                      right: 5.0,
                      bottom: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 3,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SingleMenuItem(
                                anIcon: Icons.dashboard_outlined,
                                iconCaption: 'DashBoard',
                                iconColour: Colors.blue.shade300,
                              ),
                              SingleMenuItem(
                                anIcon: Icons.pest_control_outlined,
                                iconCaption: 'Pests and Diseases',
                                iconColour: Colors.green.shade300,
                              ),
                              SingleMenuItem(
                                anIcon: Icons.engineering_outlined,
                                iconCaption: 'Hire Workers',
                                iconColour: Colors.purple.shade700,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              SingleMenuItem(
                                anIcon: Icons.forum_outlined,
                                iconCaption: 'Forum and \n Discussion',
                                iconColour: Colors.teal.shade300,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/shop');
                                },
                                child: SingleMenuItem(
                                  anIcon: Icons.shop_two_outlined,
                                  iconCaption:
                                      'Shop Products \n and Equipments',
                                  iconColour: Colors.orange.shade300,
                                ),
                              ),
                              SingleMenuItem(
                                anIcon: Icons.work_outline,
                                iconCaption: 'Apply For a Job',
                                iconColour: Colors.amber.shade400,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/get_plot');
                                },
                                child: SingleMenuItem(
                                  anIcon: Icons.terrain_outlined,
                                  iconCaption: 'Consult/Get a Plot',
                                  iconColour: Colors.teal.shade100,
                                ),
                              ),
                              SingleMenuItem(
                                anIcon: Icons.local_library_outlined,
                                iconCaption: 'Offer Training',
                                iconColour: Colors.lime.shade500,
                              ),
                              SingleMenuItem(
                                anIcon: Icons.help_center_outlined,
                                iconCaption: 'Contact Support',
                                iconColour: Colors.green.shade200,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            News_And_Announcements(),
          ],
        ),
      ),
    );
  }
}

class SingleMenuItem extends StatelessWidget {
  const SingleMenuItem({
    required this.anIcon,
    required this.iconCaption,
    required this.iconColour,
    //required this.onMenuTapped,
  });
  final IconData anIcon;
  final String iconCaption;
  final Color iconColour;
  //final Function onMenuTapped;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            anIcon,
            size: 35,
            color: iconColour,
          ),
          Text(
            iconCaption,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
