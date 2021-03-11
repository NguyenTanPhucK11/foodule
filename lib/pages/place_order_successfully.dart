import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class PlaceOrderSuccessfully extends StatefulWidget {
  @override
  _PlaceOrderSuccessfullyState createState() => _PlaceOrderSuccessfullyState();
}

class _PlaceOrderSuccessfullyState extends State<PlaceOrderSuccessfully> {
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
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.only(top: 16),
                width: 65,
                height: 65,
                child: Image.asset('assets/images/1.0x/check_circle.png'),
              ),
              _buidlSizedBox(4),
              Text(
                "You Place the Order Successfully",
                style:
                    StylesText.bodyText2.copyWith(fontWeight: FontWeight.bold),
              ),
              // _buidlSizedBox(2),
            ],
          ),
        ),
        content: Container(
          height: 76,
          width: 303,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        "You placed the order successfully. You will get your food within ",
                    style: StylesText.caption.copyWith(
                      color: AppColors.neutral1,
                    ),
                  ),
                  TextSpan(
                    text: "15 minutes. ",
                    style: StylesText.caption.copyWith(
                      color: AppColors.neutral1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "Thanks for using our services. Enjoy your food!",
                    style: StylesText.caption.copyWith(
                      color: AppColors.neutral1,
                    ),
                  ),
                ]),
              ),
              _buidlSizedBox(2),
              Container(
                height: 25,
                child: InkWell(
                  child: Text(
                    'Keep Browsing',
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
