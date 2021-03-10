import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';
import 'package:foodule/widgets/categories.dart';
import 'package:foodule/widgets/nearby.dart';
import 'package:foodule/widgets/popular_cuisines.dart';
import 'package:foodule/widgets/popular_eatries.dart';
import 'package:foodule/widgets/promotion.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  Flushbar flush;
  bool _wasButtonClicked;
  bool _isDisable = true;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutralWhite,
        body: _buildBody(context),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  _buildBody(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: FooterView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buidlSizedBox(16),
                RichText(
                  text: TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Hello, ',
                        style: StylesText.headline3.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Ocoho!',
                        style: StylesText.headline3.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryOrangeRed,
                        ),
                      )
                    ],
                  ),
                ),
                _buidlSizedBox(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'North Bridge, Halifax',
                      style: StylesText.bodyText2,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 17,
                        color: AppColors.primaryOrangeRed,
                      ),
                      onPressed: () {
                        if (_isDisable) _buildFlushbar();
                      },
                    ),
                  ],
                ),
                _buidlSizedBox(6),
                Container(
                  height: 40,
                  width: 327,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          width: 0.2,
                        ),
                      ),
                      labelStyle: StylesText.bodyText1
                          .copyWith(fontWeight: FontWeight.bold),
                      labelText: 'Search for restaurants, dishes...',
                    ),
                  ),
                ),
                _buidlSizedBox(6),
                Promotion(),
                _buidlSizedBox(12),
                PopularEatries(),
                Categories(),
                Nearby(),
                PopularCuisines(),
              ],
            ),
          ),
        ],
        footer: _buildFooter(),
        // flex: 4,
      ),
    );
  }

  _buildFooter() {
    return Footer(
      child: Container(),
    );
  }

  _buildBottomNavBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.primaryOrangeRed,
      onTap: _onItemTapped,
      // showUnselectedLabels: true,
      unselectedItemColor: AppColors.neutral3,
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
      margin: EdgeInsets.only(left: 32, right: 32, top: 23, bottom: 81),
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
