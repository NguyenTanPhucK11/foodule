import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Container(
          width: 375,
          height: 242,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Image.asset('assets/images/1.0x/restaurant.png'),
              Positioned(
                top: 170,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(24),
                  width: 375,
                  // height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: AppColors.neutralWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pizzon - Crib Ln',
                        style: StylesText.headline4.copyWith(
                          color: AppColors.neutral1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _buidlSizedBox(4),
                      Row(
                        children: [
                          _buildButton('Fast Food'),
                          SizedBox(width: 8),
                          _buildButton('Western cuisine'),
                        ],
                      ),
                      _buidlSizedBox(2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 14,
                          ),
                          Text(
                            '18 mins',
                            style: StylesText.caption
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.circle,
                            size: 6,
                          ),
                          Text(
                            '3 km',
                            style: StylesText.caption
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD65A),
                            size: 16,
                          ),
                          Text(
                            '5.0',
                            style: StylesText.caption
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '(200+ rated)',
                            style: StylesText.caption.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AppColors.neutral3,
                            ),
                          ),
                        ],
                      ),
                      _buidlSizedBox(2),
                      Divider(
                        // color: Color(0xffEAEDF2),
                        color: Colors.red,
                      ),
                      _buidlSizedBox(2),
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/1.0x/discount.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Discount 40% pizza',
                            style: StylesText.bodyText3
                                .copyWith(color: AppColors.neutral1),
                          )
                        ],
                      ),
                      // _buidlSizedBox(4),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 158,
                left: 327,
                child: Container(
                  width: 24,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 2,
                          color: AppColors.neutralWhite,
                        )),
                    child: Icon(
                      Icons.info_outlined,
                      // color: AppColors.neutralWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildButton(String text) {
    return Container(
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.neutralButton,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: StylesText.caption,
        ),
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
