import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('123'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ElevatedButton(
                    child: Text("Show Snackbar"),
                    onPressed: () {
                      
                    },
                  );
                },
                child: Text('123'))
          ],
        ),
      ),
    );
  }
}
