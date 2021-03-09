import 'package:flutter/material.dart';
import 'package:foodule/pages/home.dart';
import 'package:foodule/pages/login_page.dart';

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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            child: Text('Home'),
          )
        ],
      ),
    );
  }
}
