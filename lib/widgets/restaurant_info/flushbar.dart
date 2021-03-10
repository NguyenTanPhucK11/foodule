import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class FlushBarRes extends StatefulWidget {
  FlushBarRes({
    @required this.flush,
    @required this.wasButtonClicked,
  });

  Flushbar flush;
  bool wasButtonClicked;

  @override
  _FlushBarResState createState() => _FlushBarResState();
}

class _FlushBarResState extends State<FlushBarRes> {
  @override
  Widget build(BuildContext context) {
    return _buildFlushbar();
  }

  _buildFlushbar() {
    widget.flush = Flushbar<bool>(
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
              widget.flush.dismiss(true);
            },
          ),
          Icon(null),
        ],
      ),
    ) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
      ..show(context).then((result) {
        setState(() {
          // setState() is optional here
          widget.wasButtonClicked = result;
        });
      });
  }
}
