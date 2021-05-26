import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
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
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {},
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
          Expanded(
            //second section which contains teh icons in the menu section
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
                    color: Colors.grey[200],
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
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.dashboard_outlined,
                                    size: 35,
                                  ),
                                  Text('DashBoard'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.pest_control_outlined,
                                    size: 35,
                                  ),
                                  Text(
                                    'Pests and Diseases',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.engineering_outlined,
                                    size: 35,
                                  ),
                                  Text('Hire Workers'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.forum_outlined,
                                    size: 35,
                                  ),
                                  Text(
                                    'Forum/Discussion',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.shop_two_outlined,
                                    size: 35,
                                  ),
                                  Text(
                                    'Shop Products and Equipments',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.work_outlined,
                                    size: 35,
                                  ),
                                  Text('Apply for a Job'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.terrain_outlined,
                                    size: 35,
                                  ),
                                  Text(
                                    'Consult/Get a Plot',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.local_library_outlined,
                                    size: 35,
                                  ),
                                  Text('Offer Training'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.help_center_outlined,
                                    size: 35,
                                  ),
                                  Text('Contact Support'),
                                ],
                              ),
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
          Expanded(
            child: Container(
              color: Colors.tealAccent,
              child: Text('yoo'),
            ),
          ),
        ],
      ),
    );
  }
}
