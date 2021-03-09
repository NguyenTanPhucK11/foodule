import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_styles.dart';

class RestaurantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 56, left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.clear),
              Text(
                'Eatries Info',
                style: StylesText.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(null),
            ],
          ),
        ),
        Image.asset('assets/images/1.0x/google_map.png'),
        _pizzon(),
        _buidlSizedBox(4),
        Container(
          height: 5,
          color: AppColors.backgroundGrey,
        ),
        _buildContactInfo(),
      ],
    );
  }

  _pizzon() {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pizzon - Crib Ln',
            style: StylesText.headline4.copyWith(
              color: AppColors.neutral1,
              fontWeight: FontWeight.w500,
            ),
          ),
          _buidlSizedBox(4),
          Row(
            children: [
              _buildButton('Fast Food'),
              SizedBox(width: 8),
              _buildButton('Western cuisine'),
            ],
          ),
          _buidlSizedBox(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.access_time,
                size: 14,
              ),
              Text('18 mins',
                  style: StylesText.caption
                      .copyWith(fontWeight: FontWeight.normal)),
              Icon(Icons.circle, size: 6),
              Text('3 km',
                  style: StylesText.caption
                      .copyWith(fontWeight: FontWeight.normal)),
              Icon(Icons.star, color: Color(0xffFFD65A), size: 16),
              Text('5.0',
                  style: StylesText.caption
                      .copyWith(fontWeight: FontWeight.normal)),
              Text(
                '(200+ rated)',
                style: StylesText.caption.copyWith(
                    fontWeight: FontWeight.normal, color: AppColors.neutral3),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildContactInfo() {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Information',
            style: StylesText.headline5.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          _buidlSizedBox(4),
          _rowContactInfo(
              Icons.location_on_outlined, 'Address : 444 Crib Ln, Halifax'),
          _rowContactInfo(Icons.local_phone_sharp, 'Phone 1 : (113) 567-345'),
          _rowContactInfo(Icons.local_phone_sharp, 'Phone 2 : (322) 456-789'),
          _buidlSizedBox(6),
          Text(
            'Opening Hours',
            style: StylesText.headline5.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          _buidlSizedBox(4),
          _rowOpeningHours(
              Icons.calendar_today_outlined, 'Weekdays', '09:00 - 22:00'),
          _buidlSizedBox(2),
          _rowOpeningHours(
              Icons.calendar_today_outlined, 'Weekends', '14:00 - 22:00'),
        ],
      ),
    );
  }

  _rowContactInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: StylesText.bodyText2.copyWith(
            color: AppColors.neutral2,
            fontWeight: FontWeight.w500,
          ),
        ),
        _buidlSizedBox(2),
      ],
    );
  }

  _rowOpeningHours(IconData icon, String text, String hours) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 16,
            ),
            SizedBox(width: 8),
            Text(
              text,
              style: StylesText.bodyText2.copyWith(
                color: AppColors.neutral2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          hours,
          style: StylesText.bodyText2.copyWith(
            color: AppColors.neutral2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _buildButton(String text) {
    return Container(
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.backgroundGrey,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: StylesText.caption,
        ),
      ),
    );
  }
}
