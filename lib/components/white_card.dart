import 'package:flutter/material.dart';

// class WhiteCard extends StatelessWidget {
//   WhiteCard({required this.cardChild});
//   final Widget cardChild;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(flex: 3, child: cardChild);
//   }
// }

class WhiteCard extends StatefulWidget {
  WhiteCard({required this.cardChild});
  final Widget cardChild;

  @override
  _WhiteCardState createState() => _WhiteCardState();
}

class _WhiteCardState extends State<WhiteCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 3, child: widget.cardChild);
  }
}
