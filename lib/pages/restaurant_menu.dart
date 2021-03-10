import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/circle_tab_indicator.dart';
import 'package:foodule/widgets/restaurant/list_spedial_delivery.dart';
import 'package:foodule/widgets/restaurant_info/flushbar.dart';
import 'package:foodule/widgets/restaurant_info/list_hot_deals.dart';
import 'package:foodule/widgets/restaurant_info/list_traditional.dart';
import 'package:flushbar/flushbar_route.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Flushbar flush;
  bool _wasButtonClicked;
  bool _isDisable = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 6,
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Special Delivery',
                style: StylesText.headline5.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child: ListSpedialDelivery(),
            ),
            _buidlSizedBox(2),
            Container(
              height: 5,
              color: AppColors.backgroundGrey,
            ),
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Hot Deals',
                style: StylesText.headline5.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child: ListHotDeals(),
            ),
            _buidlSizedBox(2),
            Container(
              height: 5,
              color: AppColors.backgroundGrey,
            ),
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Traditional',
                style: StylesText.headline5.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child: ListTraditional(),
            ),
          ],
        ),
      ),
    );
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, size: 24, color: AppColors.neutral1),
          Text(
            'Pizzon - Crib Ln',
            style: StylesText.headline5,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined,
                size: 24, color: AppColors.neutral1),
            onPressed: () {
              if (_isDisable) _buildFlushbar();

              // _buildFlushbar();
            },
          ),
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

  _buildFlushbar() {
    _isDisable = false;
    flush = Flushbar<bool>(
      backgroundColor: AppColors.neutralWhite,
      margin: EdgeInsets.only(left: 32, right: 32, top: 23),
      borderRadius: 6,
      boxShadows: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0.0, 3.0),
          blurRadius: 3.0,
        )
      ],
      titleText: Container(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Checkout - 1 items",
          style: StylesText.caption.copyWith(
            color: AppColors.neutral3,
          ),
        ),
      ),
      messageText: Container(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Pizzon - Crib Ln",
          style: StylesText.headline6,
        ),
      ),
      icon: Container(
        // padding: EdgeInsets.only(left: 12),
        margin: EdgeInsets.only(left: 12),
        child: Image.asset(
          'assets/images/1.0x/checkout.png',
        ),
      ),
      mainButton: Column(
        children: [
          IconButton(
            icon: Icon(
              Icons.clear,
              size: 14,
            ),
            onPressed: () {
              flush.dismiss(true);
              _isDisable = true;
            },
          ),
          Icon(null),
        ],
      ),
    ) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
      ..show(context).then((result) {
        setState(() {
          // setState() is optional here
          _wasButtonClicked = result;
        });
      });
  }
}
