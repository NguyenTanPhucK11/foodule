import 'package:flutter/material.dart';
import 'package:foodule/widgets/restaurant/spedial_delivery.dart';

class ListSpedialDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return index == 1
            ? SpedialDelivery(isCheck: true, isDiscount: true)
            : SpedialDelivery(
                isCheck: false,
                isDiscount: false,
              );
      },
    );
  }
}
