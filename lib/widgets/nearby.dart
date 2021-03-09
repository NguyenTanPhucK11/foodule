import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Nearby extends StatelessWidget {
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
                'Nearby',
                style: StylesText.headline4.copyWith(
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
          height: 188,
          child: ListView.builder(
            padding: EdgeInsets.only(right: 50.0),
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
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/1.0x/promotion2.png',
                            width: 241,
                          ),
                          Container(
                            width: 241,
                            height: 84,
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buidlSizedBox(3),
                                Text(
                                  'Lorem Burger - North Bridge',
                                  style: StylesText.headline6
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                _buidlSizedBox(2),
                                Text(
                                  'North Bridge, Halifax',
                                  style: StylesText.caption
                                      .copyWith(color: AppColors.neutral3),
                                ),
                                _buidlSizedBox(1),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.access_time),
                                    Text(
                                      '18 mins',
                                      style: StylesText.caption,
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 6,
                                    ),
                                    Text(
                                      '3 km',
                                      style: StylesText.caption,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFFD65A),
                                      size: 16,
                                    ),
                                    Text(
                                      '5.0',
                                      style: StylesText.caption,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        _buidlSizedBox(8),
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
