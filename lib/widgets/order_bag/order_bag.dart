import 'package:flutter/material.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/order_bag/list_drink.dart';
import 'package:foodule/widgets/order_bag/list_fastfood.dart';

class OrderBag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'All',
                      style: StylesText.headline5.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
                _buidlSizedBox(6),
                Text(
                  'Clear all',
                  style: StylesText.bodyText2
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 24),
              child: Text('Fast Food', style: StylesText.headline5)),
          _buidlSizedBox(2),
          Container(
            height: 220,
            child: ListFastFood(),
          ),
          _buidlSizedBox(4),
          Container(
              padding: EdgeInsets.only(left: 24),
              child: Text('Drink', style: StylesText.headline5)),
          _buidlSizedBox(2),
          Container(
            height: 110,
            child: ListDrink(),
          ),
        ],
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
