import 'package:common_widgets_demo/widgets/custom_switch_tile.dart';
import 'package:common_widgets_demo/widgets/switch_tile_view.dart';
import 'package:flutter/material.dart';

class SwitchTileScreen extends StatefulWidget {

  @override
  _SwitchTileScreenState createState() => _SwitchTileScreenState();
}

class _SwitchTileScreenState extends State<SwitchTileScreen> {


  List<String> subtitles = [
    'Card Details',
    'Manage Card',
    'Set Transaction limits'
  ];


  List<bool> subtitleStates = [
    true,
    false,
    true,
  ];

  bool _switchStatus = true;

  void buildInnerSwitchList(bool switchStatus) {
    setState(() {
      debugPrint('reached here');
      _switchStatus = switchStatus;
      debugPrint(_switchStatus.toString());
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Tile Demo'),
      ),
      body: Column(
        children: [
          CustomSwitchTile(value: _switchStatus, title: 'Domestic Card Settings', fontSize: 14, switchStateHandler: buildInnerSwitchList),
          Container(
           child: _switchStatus ? SizedBox(
               child: SwitchListView(itemCount: subtitles.length, listOfTitle: subtitles, switchState: subtitleStates))
               : SizedBox(height:30),
          )
        ],
      ),
    );
  }
}