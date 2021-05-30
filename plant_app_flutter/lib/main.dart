import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:plant_app_flutter/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/dashboard': (contect) => DashboardScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Farm Guard',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      //home: HomeScreen(),
    );
  }
}
