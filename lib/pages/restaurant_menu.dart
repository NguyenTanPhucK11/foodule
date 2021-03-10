import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/circle_tab_indicator.dart';
import 'package:foodule/widgets/restaurant/list_spedial_delivery.dart';

class RestaurantMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 6,
        child: Scaffold(
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        children: [
          // Container()
          Container(
            height: 440,
            child: ListSpedialDelivery(),
          ),
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.neutralWhite,
      elevation: 1.0,
      bottom: PreferredSize(
        child: TabBar(
          // style: StylesText.bodyText2,
          labelColor: AppColors.neutral1,
          labelStyle:
              StylesText.bodyText2.copyWith(fontWeight: FontWeight.w600),
          indicator:
              CircleTabIndicator(color: AppColors.primaryOrangeRed, radius: 3),
          unselectedLabelColor: AppColors.neutral1.withOpacity(0.3),
          isScrollable: true,
          tabs: [
            _childTabBar('Autumn'),
            _childTabBar('Special'),
            _childTabBar('Hot deals'),
            _childTabBar('Traditional'),
            _childTabBar('Traditional'),
            _childTabBar('Traditional'),
          ],
        ),
        preferredSize: Size.fromHeight(30.0),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, size: 24, color: AppColors.neutral1),
          Text(
            'Pizzon - Crib Ln',
            style: StylesText.headline5,
          ),
          Icon(Icons.favorite_border_outlined,
              size: 24, color: AppColors.neutral1),
        ],
      ),
    );
  }

  _childTabBar(String name) {
    return Tab(
      child: Text(
        name,
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
