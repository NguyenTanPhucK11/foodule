import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class OrderSummary extends StatelessWidget {
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
                'Order summary',
                style: StylesText.headline5,
              ),
              Text(
                'Add more',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          _buidlSizedBox(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('x1', style: StylesText.bodyText2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shripm Pizza', style: StylesText.bodyText2),
                  Text(
                    '+Potato, +Ketchup',
                    style: StylesText.caption.copyWith(
                      color: AppColors.neutral3,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Text('\$ 15.00', style: StylesText.bodyText2),
            ],
          ),
          _buidlSizedBox(4),
          Divider(
            height: 0,
          ),
          _buidlSizedBox(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: StylesText.headline6,
              ),
              Text(
                '\$ 15.00',
                style: StylesText.headline6,
              ),
            ],
          ),
          _buidlSizedBox(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping fee',
                style: StylesText.bodyText2,
              ),
              Text(
                '\$ 1.00',
                style: StylesText.bodyText2,
              ),
            ],
          )
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
