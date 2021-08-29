import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double iconSize = 30.0;

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: kPryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBarIcon(
              icon: FaIcon(FontAwesomeIcons.home,
                  size: iconSize, color: kIconColor),
              iconText: 'DashBoard',
            ),
            BottomBarIcon(
              icon: FaIcon(
                FontAwesomeIcons.userCircle,
                size: iconSize,
              ),
              iconText: 'Beneficiary',
            ),
            BottomBarIcon(
              icon: FaIcon(
                FontAwesomeIcons.heart,
                size: iconSize,
              ),
              iconText: 'Transactions',
            ),
            BottomBarIcon(
              icon: FaIcon(
                FontAwesomeIcons.cogs,
                size: iconSize,
              ),
              iconText: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon({required this.icon, required this.iconText});
  final Widget icon;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/dashboard');
      },
      child: Column(
        children: [
          icon,
          SizedBox(
            height: 10,
          ),
          Text(
            iconText,
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
