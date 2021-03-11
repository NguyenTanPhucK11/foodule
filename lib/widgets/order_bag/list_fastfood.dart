import 'package:flutter/material.dart';
import 'package:foodule/widgets/order_bag/drink.dart';
import 'package:foodule/widgets/order_bag/fastfood.dart';

class ListFastFood extends StatelessWidget {
  final bool isRateReOrder;
  final bool isColorPrimary;
  const ListFastFood(
      {@required this.isRateReOrder, @required this.isColorPrimary});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Drink(
          isRateReOrder: isRateReOrder,
          isColorPrimary: isColorPrimary,
        );
      },
    );
  }
}
