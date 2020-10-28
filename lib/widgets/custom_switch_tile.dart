import 'package:common_widgets_demo/widgets/animated_switch.dart';
import 'package:flutter/material.dart';

class CustomSwitchTile extends StatelessWidget {

  final String title;
  final double fontSize;
  final bool value;
  final Function switchStateHandler;

  CustomSwitchTile({this.title, this.fontSize, @required this.value, this.switchStateHandler});

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
            height: 20.0, width: 40.0, padding: 1.0, toggleSize: 20.0, borderRadius: 20.0, value: value,
            switchStateHandler: switchStateHandler,
          ),
        ],
      ),
    );
  }


}