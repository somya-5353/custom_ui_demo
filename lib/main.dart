import 'package:common_widgets_demo/screens/my_home.dart';
import 'package:common_widgets_demo/screens/nav_bar_screen.dart';
import 'package:common_widgets_demo/widgets/nav_bar_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.blue,
            accentColor: Colors.grey[400],
            toggleableActiveColor: Colors.white,
            highlightColor: Colors.black,
        ),
      home: MyHome(),
    );
  }
}