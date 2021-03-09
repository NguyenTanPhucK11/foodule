import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class PopularCuisines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Cuisines',
                style: StylesText.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        _buidlSizedBox(4),
        Container(
          // width: 241,
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 5,
                      shadowColor: AppColors.neutralWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset(
                        'assets/images/1.0x/NewZealand.png',
                      ),
                    ),
                    _buidlSizedBox(2),
                    Text(
                      'New Zealander',
                      style: StylesText.bodyText3.copyWith(
                        color: AppColors.neutral1,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
