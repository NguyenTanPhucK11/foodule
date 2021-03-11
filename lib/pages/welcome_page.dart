import 'package:flutter/material.dart';
import 'package:foodule/pages/place_order_successfully.dart';
import 'package:foodule/pages/home.dart';
import 'package:foodule/pages/login_page.dart';
import 'package:foodule/pages/restaurant.dart';
import 'package:foodule/pages/restaurant_info.dart';

class WelcomePage extends StatelessWidget {
  final int index;

  const WelcomePage({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Column(
        children: [
          _buildElevatedButton(Login(), 'Login', context),
          _buildElevatedButton(Home(), 'Home', context),
          _buildElevatedButton(Restaurant(), 'Restaurant', context),
          _buildElevatedButton(RestaurantInfo(), 'Restaurant Info', context),
          _buildElevatedButton(PlaceOrderSuccessfully(), 'Place Order Successfully', context)
        ],
      ),
    );
  }

  _buildElevatedButton(Widget widget, String name, context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Text(name),
    );
  }
}
