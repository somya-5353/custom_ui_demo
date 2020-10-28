import 'package:common_widgets_demo/widgets/custom_flutter_switch.dart';
import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {
  final double height;
  final double width;
  final double padding;
  final double toggleSize;
  final double borderRadius;
  final bool value;
  final Function switchStateHandler;

  AnimatedSwitch({this.height, this.width, this.padding, this.toggleSize,
    this.borderRadius, @required this.value, this.switchStateHandler});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimatedSwitchState();
  }
}

class AnimatedSwitchState extends State<AnimatedSwitch> {
  bool _currentSwitchState;

  @override
  void initState() {
    super.initState();
    _currentSwitchState = widget.value;
  }
  //
  // final double height;
  // final double width;
  // final double padding;
  // final double toggleSize;
  // final double borderRadius;
  // final bool value;
  //
  // AnimatedSwitchState({this.height, this.width, this.padding, this.toggleSize, this.borderRadius, @required this.value});

  @override
  Widget build(BuildContext context) {

    return CustomFlutterSwitch(
      height: widget.height,
      width: widget.width,
      padding: widget.padding,
      toggleSize: widget.toggleSize,
      borderRadius: widget.borderRadius,
      activeColor: Theme.of(context).toggleableActiveColor,
      inactiveColor: Theme.of(context).accentColor,
      value: _currentSwitchState,
      onToggle: (val) {
        setState(() {
          _currentSwitchState = val;
          if(widget.switchStateHandler != null) {
            widget.switchStateHandler(_currentSwitchState);
          }
        });

       //debugPrint(value.toString());
        // if(widget.switchStateHandler != null) {
        //   widget.switchStateHandler(value);
        // }
      },
    );
  }


}