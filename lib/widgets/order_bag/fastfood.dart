import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class FastFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          padding: EdgeInsets.only(left: 24, right: 24),
          height: 74,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/images/1.0x/shrimp.png',
                  width: 74,
                  height: 74,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pizzon - Crib Ln',
                      style: StylesText.headline6,
                    ),
                    Text(
                      '1x Black Peper',
                      style: StylesText.caption.copyWith(
                        color: AppColors.neutral3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              size: 14,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '15 mins',
                              style: StylesText.caption.copyWith(
                                color: AppColors.neutral1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            SizedBox(width: 8),
                            Text(
                              '1.1 km',
                              style: StylesText.caption.copyWith(
                                color: AppColors.neutral1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$ 16.00',
                          style: StylesText.headline6.copyWith(
                            color: AppColors.primaryOrangeRed,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(height: 0),
      ],
    );
  }
}
