import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class Voucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutralWhite,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(46.0),
      child: AppBar(
        backgroundColor: AppColors.neutralWhite,
        elevation: 1.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Promo Code Apply',
            style: StylesText.headline5.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _promoCode(),
          _buidlSizedBox(6),
          Text(
            'Select your vouchers',
            style: StylesText.headline5,
          ),
          _buidlSizedBox(4),
          _subTract(),
        ],
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _promoCode() {
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 34,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
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
        ),
        Container(
          height: 34,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(6.0),
                bottomRight: Radius.circular(6.0),
              )),
              primary: AppColors.neutral5, // background
            ),
            child: Text(
              'APPLY',
              style: StylesText.bodyText2.copyWith(
                color: AppColors.neutralWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _subTract() {
    return Container(
      child: Stack(
        children: [
          Container(
            width: 327,
            height: 88,
            child: Image.asset(
              'assets/images/1.0x/Subtract.png',
            ),
          ),
          Positioned(
              top: 23,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.neutral1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: StylesText.headline5.copyWith(
                                color: AppColors.neutralWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: StylesText.headline5.copyWith(
                                color: AppColors.neutralWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      height: 68,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black fries day',
                            style: StylesText.headline6,
                          ),
                          Text(
                            'All black fries',
                            style: StylesText.caption.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutral3,
                            ),
                          ),
                          Text(
                            'BLFD30',
                            style: StylesText.headline6,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
