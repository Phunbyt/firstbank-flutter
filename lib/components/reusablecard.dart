import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.myCardIcon, this.myCardText, this.myCardColor);
  final Widget myCardIcon;
  final Widget myCardText;
  final Color myCardColor;
// Color(0xFF050B1A)
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myCardIcon,
            SizedBox(
              height: 15,
            ),
            myCardText
          ],
        ),
      ),
    );
  }
}
