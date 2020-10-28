import 'package:common_widgets_demo/utils/mask_card_number.dart';
import 'package:common_widgets_demo/widgets/custom_switch_tile.dart';
import 'package:common_widgets_demo/widgets/payment_pending_card.dart';
import 'package:common_widgets_demo/widgets/primary_card_widget.dart';
import 'package:common_widgets_demo/widgets/switch_tile_view.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {


  List<String> title = [
    'Card Details',
    'Manage Card',
    'Set Transaction limits'
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            SwitchListView(itemCount: title.length, listOfTitle: title),
            ],
        ),
      )
    );
  }



}