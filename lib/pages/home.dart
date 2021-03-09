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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

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
                _buidlSizedBox(11),
                Text(
                  'Hello, Ocoho!',
                  style: StylesText.headline3.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buidlSizedBox(2),
                Row(
                  children: [
                    Text(
                      'North Bridge, Halifax',
                      style: StylesText.bodyText2,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 17,
                      color: AppColors.primaryOrangeRed,
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
                      labelStyle: StylesText.bodyText1,
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
      showUnselectedLabels: true,
      unselectedItemColor: AppColors.neutral3,
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
