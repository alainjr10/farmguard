import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:plant_app_flutter/screens/home/components/homepage.dart';

import '../../../constants.dart';

enum TabItem { home, dashboard, pests }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List _widgetOptions = [
    HomePageWidget(),
    //Body(),
    DashboardScreen(),
    Center(
      child: Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 1: Business',
        style: optionStyle,
      ),
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        selectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pest_control,
            ),
            label: 'Pests',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_rounded,
            ),
            label: 'Hire',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forum_rounded,
            ),
            label: 'Forum',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }

  // Widget _buildBody() {
  //   return Container(
  //       color: TabHelper.color(TabItem.home),
  //       alignment: Alignment.center,
  //       child: FlatButton(
  //         child: Text(
  //           'PUSH',
  //           style: TextStyle(fontSize: 32.0, color: Colors.white),
  //         ),
  //         onPressed: _push,TabHelper.description(TabItem.home),
  //     ),
  //   ));
  // }

  // AppBar _theAppBar() {
  //   return AppBar(
  //     elevation: 9,
  //     title: Text('Home', style: kTitleTextStyle),
  //     actions: [
  //       RightSideIcons(
  //         anIcon: Icons.search,
  //       ),
  //       RightSideIcons(
  //         anIcon: Icons.notifications,
  //       ),
  //       RightSideIcons(
  //         anIcon: Icons.account_circle_sharp,
  //       ),
  //     ],
  //   );
  // }
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

// bottomNavigationBar: Container(
//   height: 60,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     boxShadow: [
//       BoxShadow(
//         offset: Offset(0, -8),
//         blurRadius: 15,
//         color: kPrimaryColor.withOpacity(0.28),
//       ),
//     ],
//   ),
//   child: Padding(
//     padding: const EdgeInsets.only(left: 8.0, right: 10.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           icon: Icon(
//             Icons.home,
//             size: 33,
//             color: Colors.black45,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.dashboard,
//             size: 33,
//             color: Colors.black45,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.pest_control,
//             size: 33,
//             color: Colors.black45,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.work_rounded,
//             size: 33,
//             color: Colors.black45,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.forum_rounded,
//             size: 33,
//             color: Colors.black45,
//           ),
//           onPressed: () {},
//         ),
//       ],
//     ),
//   ),
// ),
