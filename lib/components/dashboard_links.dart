import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleLinks(
              icon: FontAwesomeIcons.exchangeAlt,
              iconText: 'Transfer',
            ),
            CircleLinks(
              icon: FontAwesomeIcons.wallet,
              iconText: 'Pay Bills',
            ),
            CircleLinks(
              icon: FontAwesomeIcons.commentDollar,
              iconText: 'Buy Airtime',
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleLinks(
              icon: FontAwesomeIcons.qrcode,
              iconText: 'Quick QR',
            ),
            CircleLinks(
              icon: FontAwesomeIcons.handHoldingUsd,
              iconText: 'Loans',
            ),
            CircleLinks(
              icon: FontAwesomeIcons.creditCard,
              iconText: 'Virtual Cards',
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class CircleLinks extends StatelessWidget {
  const CircleLinks({
    required this.icon,
    required this.iconText,
  });

  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/transfer');
      },
      child: Column(
        children: [
          CircleAvatarIcon(
            bgColor: Colors.white,
            iconData: FaIcon(icon, size: 30.0, color: kIconColor),
            iconRadius: 30.0,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            iconText,
            style: kLabelTextStyleDark,
          )
        ],
      ),
    );
  }
}

class CircleAvatarIcon extends StatelessWidget {
  CircleAvatarIcon({
    required this.bgColor,
    required this.iconData,
    required this.iconRadius,
  });

  final Color bgColor;
  final Widget iconData;
  final double iconRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor,
      radius: iconRadius,
      child: iconData,
    );
  }
}
