import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Method',
                style: StylesText.headline5,
              ),
            ],
          ),
          _buidlSizedBox(2),
          Row(
            children: [],
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

  _buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [Text('Cash'), Icon(Icons.attach_money_outlined)],
      ),
    );
  }
}
