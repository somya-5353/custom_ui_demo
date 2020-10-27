import 'package:common_widgets_demo/utils/mask_card_number.dart';
import 'package:common_widgets_demo/widgets/animated_switch.dart';
import 'package:common_widgets_demo/widgets/custom_switch_tile.dart';
import 'package:common_widgets_demo/widgets/payment_pending_card.dart';
import 'package:common_widgets_demo/widgets/primary_card_widget.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {

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
            Container(
                child: PaymentPendingCard(height: 200, width: 420, elevation: 4.0, title: "Payment Pending", amount: "54,321.00", dueDateString: "due on 27th August, 2020",
                viewCardTitle: "View Card Statement",buttonTitle: "PAY NOW", buttonHeight: 35, buttonWidth: 80, ),
            ),
            CustomSwitchTile(title: "Card Details", fontSize: 14,),
            SizedBox(height: 20),
            PrimaryCardWidget(height: 200, width: 420, elevation:4.0, title: "Total outstanding amount", amount: " 34,789.0", cardHolderName: "John Deo", cardType: "Platinum", maskedCardNumber: MaskCardNumber.maskCardNumber("1122345356678901")),
          ],
        ),
      )
    );
  }



}