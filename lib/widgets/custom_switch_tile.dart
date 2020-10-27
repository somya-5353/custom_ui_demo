import 'package:common_widgets_demo/widgets/animated_switch.dart';
import 'package:flutter/material.dart';

class CustomSwitchTile extends StatelessWidget {

  final String title;
  final double fontSize;

  CustomSwitchTile({this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(
              fontSize: fontSize
            )
          ),
          AnimatedSwitch(
            height: 30.0, width: 60.0, padding: 3.0, toggleSize: 25.0, borderRadius: 20.0,
          ),
        ],
      ),
    );
  }


}