// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/Welcome/welcome_screen.dart';
import 'package:plant_app_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:plant_app_flutter/screens/get_plot/get_plot.dart';
import 'package:plant_app_flutter/screens/home/home_screen.dart';
import 'package:plant_app_flutter/screens/shop/shop.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/homescreen': (context) => HomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/get_plot': (context) => GetPlot(),
        '/shop': (context) => Shop(),
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
