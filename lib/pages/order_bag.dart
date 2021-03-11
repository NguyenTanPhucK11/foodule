import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/circle_tab_indicator.dart';

class OrderBag extends StatelessWidget {
  bool _wasButtonClicked;
  bool _isDisable = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return;
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
