import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Total extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 24, left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: StylesText.bodyText2,
              ),
              Text(
                '\$ 16.00',
                style: StylesText.bodyText2.copyWith(
                  color: AppColors.primaryOrangeRed,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          _buidlSizedBox(4),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  primary: AppColors.primaryOrangeRed, // background
                ),
                child: Text(
                  'PLACE ORDER',
                  style: StylesText.bodyText2.copyWith(
                    color: AppColors.neutralWhite,
                    fontWeight: FontWeight.bold,
                  ),
                )),
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
