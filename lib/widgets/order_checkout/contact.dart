import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Contact extends StatelessWidget {
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
                'Contact',
                style: StylesText.headline5,
              ),
              Text(
                'Edit',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          _buidlSizedBox(2),
          Text(
            'Ocoho, (424) 545-1818',
            style: StylesText.bodyText2.copyWith(
              color: AppColors.neutral2,
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
}
