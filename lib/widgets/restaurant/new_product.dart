import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class NewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'New Product - Autumn',
              style: StylesText.headline5.copyWith(
                color: AppColors.neutral2,
              ),
            ),
          ),
          Container(
            height: 74,
            width: 375,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 106,
                    child: Image.asset(
                      'assets/images/1.0x/shrimp.png',
                      width: 74,
                      height: 74,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 106,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Shrimp Pizza',
                              style: StylesText.headline6,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'KCal : 475',
                              style: StylesText.caption.copyWith(
                                color: AppColors.neutral2,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Shrimp, mushroom, cheese, tomatoa',
                          style: StylesText.caption.copyWith(
                            color: AppColors.neutral3,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '\$ 12.00',
                              style: StylesText.headline6.copyWith(
                                color: AppColors.primaryOrangeRed,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '\$ 20.00',
                              style: StylesText.caption.copyWith(
                                  color: AppColors.neutral3,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
