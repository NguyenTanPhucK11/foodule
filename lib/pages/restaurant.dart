import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/restaurant/header.dart';
import 'package:foodule/widgets/restaurant/list_new_product.dart';
import 'package:foodule/widgets/restaurant/new_product.dart';

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
                child: Header(),
              ),
              _iconInfo(),
            ],
          ),
        ),
        Container(
          height: 248,
          width: 375,
          // margin: EdgeInsets.all(24),
          margin: EdgeInsets.only(top: 120),
          child: ListNewProduct(),
        ),
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _iconInfo() {
    return Positioned(
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
    );
  }
}
