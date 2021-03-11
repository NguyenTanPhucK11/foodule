import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/circle_tab_indicator.dart';
import 'package:foodule/widgets/order_bag/list_drink.dart';
import 'package:foodule/widgets/order_bag/list_fastfood.dart';
import 'package:foodule/widgets/order_bag/order_bag.dart';
import 'package:foodule/widgets/order_bag/order_history.dart';
import 'package:foodule/widgets/order_bag/order_upcoming.dart';

class Order extends StatelessWidget {
  bool _wasButtonClicked;
  bool _isDisable = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 3,
        length: 4,
        child: Scaffold(
          backgroundColor: AppColors.neutralWhite,
          appBar: _buildAppBar(context),
          body: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(context) {
    return OrderHistory();
  }

  _buildAppBar(context) {
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
            _childTabBar('Ongoing'),
            _childTabBar('Upcoming'),
            _childTabBar('History'),
            _childTabBar('Bag'),
          ],
        ),
        preferredSize: Size.fromHeight(30.0),
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
}
