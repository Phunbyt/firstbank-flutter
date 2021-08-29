import 'package:flutter/material.dart';
import '../constants.dart';

const double dotHeight = 10.0;
const double dotWidth = 10.0;

class DotsBrain extends StatefulWidget {
  DotsBrain({
    required this.myNum,
  });

  final int myNum;

  @override
  _DotsBrainState createState() => _DotsBrainState();
}

class _DotsBrainState extends State<DotsBrain> {
  final List<RawMaterialButton> dots = [
    RawMaterialButton(
      onPressed: () {},
      fillColor: kDashboardCardColor,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: dotWidth, minHeight: dotHeight),
    ),
    RawMaterialButton(
      onPressed: () {},
      fillColor: kDashboardCardColor,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: dotWidth, minHeight: dotHeight),
    ),
  ];
  void dotsFunction(myNum) {
    print(myNum);
    setState(() {
      dots.map((e) => {
            if (e == dots[myNum]) {e.fillColor: kIconColor}
          });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }
}
