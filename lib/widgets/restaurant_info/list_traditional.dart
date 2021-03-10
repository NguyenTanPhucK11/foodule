import 'package:flutter/material.dart';
import 'package:foodule/widgets/restaurant_info/traditional.dart';

class ListTraditional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return index == 1
            ? Traditional(isCheck: true, isDiscount: true)
            : Traditional(
                isCheck: false,
                isDiscount: false,
              );
      },
    );
  }
}
