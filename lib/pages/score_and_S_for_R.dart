import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class ScoreAndSFR extends StatefulWidget {
  @override
  _ScoreAndSFRState createState() => _ScoreAndSFRState();
}

class _ScoreAndSFRState extends State<ScoreAndSFR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Place Order Successfully'),
              onPressed: _showAlertDialog,
            ),
          ],
        ),
      ),
    );
  }

  _showAlertDialog() {
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        title: Container(
          width: 243,
          // height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buidlSizedBox(4),
              Text(
                "Pizzon - Crib Ln",
                style:
                    StylesText.headline5.copyWith(fontWeight: FontWeight.bold),
              ),
              _buidlSizedBox(6),
              Container(
                // padding: EdgeInsets.only(top: 16),
                width: 208,
                height: 32,
                child: Image.asset('assets/images/1.0x/star.png'),
              ),
              _buidlSizedBox(8),
              Text(
                "Score the restaurant’s services",
                style: StylesText.bodyText2.copyWith(color: Colors.black87),
              ),
              _buidlSizedBox(4),
              Container(
                height: 5,
                color: AppColors.backgroundGrey,
              ),
              _buidlSizedBox(4),
              Text(
                "Please consider giving the restaurant some suggestion for better service",
                style: StylesText.bodyText3.copyWith(color: AppColors.neutral3),
              ),
              _buidlSizedBox(20),
            ],
          ),
        ),
        content: Container(
          height: 30,
          // width: 303,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 25,
                child: InkWell(
                  child: Text(
                    'Submit',
                    style: StylesText.bodyText1.copyWith(
                      color: AppColors.primaryOrangeRed,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
