import 'package:common_widgets_demo/widgets/custom_switch_tile.dart';
import 'package:flutter/material.dart';

class SwitchListView extends StatelessWidget {

  final int itemCount;
  final List<String> listOfTitle;
  final List<bool> switchState;
  final Function switchStateHandler;

  const SwitchListView({
    Key key,
    @required this.itemCount,
    @required this.listOfTitle,
    @required this.switchState,
    this.switchStateHandler,
  }) ;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return CustomSwitchTile(title: listOfTitle[index], fontSize: 14,
            value:switchState[index], switchStateHandler: switchStateHandler);
      },
    );
  }
}