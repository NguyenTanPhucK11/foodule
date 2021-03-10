import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class HotDeals extends StatelessWidget {
  final bool isCheck;
  final bool isDiscount;
  const HotDeals({Key key, @required this.isCheck, this.isDiscount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // color: AppColors.hoverColor,
          padding: EdgeInsets.only(
              left: 24, right: 24, top: 16, bottom: isCheck ? 8 : 16),
          height: isCheck ? 122 : 106,
          child: Column(
            children: [
              Row(
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
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Shrimp, mushroom, cheese, tomatoa',
                          style: StylesText.caption.copyWith(
                            color: AppColors.neutral3,
                            fontWeight: FontWeight.bold,
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
                            isDiscount
                                ? Text(
                                    '\$ 20.00',
                                    style: StylesText.caption.copyWith(
                                      color: AppColors.neutral3,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              isCheck ? SizedBox(height: 8) : SizedBox(),
              isCheck
                  ? Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          size: 12,
                          color: AppColors.neutral3,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'twice by you',
                          style: StylesText.caption.copyWith(
                            color: AppColors.neutral3,
                          ),
                        )
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
        Divider(height: 0),
      ],
    );
  }
}
