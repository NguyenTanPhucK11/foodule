import 'package:flutter/material.dart';
import 'package:foodule/widgets/restaurant_info/hot_deals.dart';

class ListHotDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return index == 1
            ? HotDeals(isCheck: true, isDiscount: true)
            : HotDeals(
                isCheck: false,
                isDiscount: false,
              );
      },
    );
  }
}
