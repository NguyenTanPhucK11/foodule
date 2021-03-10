import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushBarRes extends StatefulWidget {
  @override
  _FlushBarResState createState() => _FlushBarResState();
}

class _FlushBarResState extends State<FlushBarRes> {
  Flushbar flush;
  bool _wasButtonClicked;
  @override
  Widget build(BuildContext context) {
    return _buildFlushbar();
  }

  _buildFlushbar() {
    flush = Flushbar<bool>(
      title: "Hey Ninja",
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      icon: Icon(
        Icons.info_outline,
        color: Colors.blue,
      ),
      mainButton: FlatButton(
        onPressed: () {
          flush.dismiss(true); // result = true
        },
        child: Text(
          "ADD",
          style: TextStyle(color: Colors.amber),
        ),
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
