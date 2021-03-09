import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: StylesText.headline5.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        _buidlSizedBox(4),
        Container(
          // width: 100,
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: AppColors.neutral5,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Image.asset(
                        'assets/images/1.0x/discount.png',
                        width: 26,
                        height: 26,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Promos',
                      style: StylesText.bodyText2.copyWith(
                        // color: Color(0xff283743),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        _buidlSizedBox(8)
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
