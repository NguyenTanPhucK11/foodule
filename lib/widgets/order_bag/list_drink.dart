import 'package:flutter/material.dart';
import 'package:foodule/widgets/order_bag/fastfood.dart';

class ListDrink extends StatelessWidget {
  final bool isRateReOrder;
  final bool isColorPrimary;
  const ListDrink(
      {@required this.isRateReOrder, @required this.isColorPrimary});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return FastFood(
          isRateReOrder: isRateReOrder,
          isColorPrimary: isColorPrimary,
        );
      },
    );
  }
}
