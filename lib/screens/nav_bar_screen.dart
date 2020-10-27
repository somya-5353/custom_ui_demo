import 'package:common_widgets_demo/widgets/nav_bar_title.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: NavBarTitle(
        title: 'Card Details', fontSize: 30
      ),
    );
  }


}