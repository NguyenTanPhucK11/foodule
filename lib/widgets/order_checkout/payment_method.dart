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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildElevatedButton(true, 'Cash', 'assets/images/1.0x/cash.png'),
              _buildElevatedButton(
                  false, 'Card', 'assets/images/1.0x/card.png'),
              _buildElevatedButton(false, '', 'assets/images/1.0x/3dot.png'),
            ],
          ),
          _buidlSizedBox(4),
          Container(
            height: 50,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff9B9B9B),
                  ),
                ),
                hintText: 'Promo Code or Voucher',
                labelStyle:
                    StylesText.bodyText2.copyWith(color: Color(0xff9B9B9B)),
                labelText: 'Promo Code or Voucher',
              ),
            ),
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

  _buildElevatedButton(bool isChoose, String text, String image) {
    return Container(
      width: 98,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isChoose ? AppColors.primarySeashell : AppColors.neutral5,
        ),
        onPressed: () {},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: StylesText.bodyText2.copyWith(
                  color: isChoose
                      ? AppColors.primaryOrangeRed
                      : AppColors.neutral3,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                child: Image.asset(image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
