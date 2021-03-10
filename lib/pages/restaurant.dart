import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/restaurant/header.dart';
import 'package:foodule/widgets/restaurant/list_new_product.dart';
import 'package:foodule/widgets/restaurant/list_spedial_delivery.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutralWhite,
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
              _buildTabBar(),
            ],
          ),
        ),
        _buildListRestaurant(ListNewProduct(), 'New Product - Autumn', true),
        _buildListRestaurant(ListSpedialDelivery(), 'Special Delivery', false),
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
        width: 28,
        height: 28,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.neutralWhite,
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

  _iconTabBar(IconData icons) {
    return Container(
      width: 28,
      height: 28,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icons,
          color: AppColors.neutralWhite,
          size: 20,
        ),
      ),
    );
  }

  _buildTabBar() {
    return Positioned(
      top: 54,
      left: 24,
      child: Container(
        width: 325,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconTabBar(Icons.arrow_back_ios_outlined),
            _iconTabBar(Icons.favorite_border_rounded),
          ],
        ),
      ),
    );
  }

  _buildListRestaurant(Widget widget, String name, bool isNewProduct) {
    return Container(
      padding: isNewProduct
          ? EdgeInsets.only(
              top: 120,
            )
          : EdgeInsets.only(
              top: 0,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5,
            color: AppColors.backgroundGrey,
          ),
          Container(
            padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
            child: Text(
              name,
              style: StylesText.headline5.copyWith(
                color: AppColors.neutral2,
              ),
            ),
          ),
          Container(
            height: isNewProduct ? 212 : 106,
            child: widget,
          ),
        ],
      ),
    );
  }
}
