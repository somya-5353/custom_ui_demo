import 'package:common_widgets_demo/widgets/custom_flutter_switch.dart';
import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {

  final double height;
  final double width;
  final double padding;
  final double toggleSize;
  final double borderRadius;

  AnimatedSwitch({this.height, this.width, this.padding, this.toggleSize, this.borderRadius});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimatedSwitchState(height: height, width: width, padding: padding, toggleSize: toggleSize, borderRadius: borderRadius);
  }
}

class AnimatedSwitchState extends State<AnimatedSwitch> {

  bool status = false;
  final double height;
  final double width;
  final double padding;
  final double toggleSize;
  final double borderRadius;

  AnimatedSwitchState({this.height, this.width, this.padding, this.toggleSize, this.borderRadius});

  @override
  Widget build(BuildContext context) {

    return CustomFlutterSwitch(
      height: height,
      width: width,
      padding: padding,
      toggleSize: toggleSize,
      borderRadius: borderRadius,
      activeColor: Theme.of(context).toggleableActiveColor,
      inactiveColor: Theme.of(context).accentColor,
      value: status,
      onToggle: (value) {
        setState(() {
          status = value;
        });
      },
    );
  }


}