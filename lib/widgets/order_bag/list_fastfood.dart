import 'package:flutter/material.dart';
import 'package:foodule/widgets/order_bag/fastfood.dart';

class ListFastFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return FastFood();
      },
    );
  }
}
