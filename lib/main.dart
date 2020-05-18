import 'package:flutter/material.dart';
import 'package:meditation_app_ui/screens/home.dart';
import 'package:meditation_app_ui/util/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App Challenge',
      theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor)
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}