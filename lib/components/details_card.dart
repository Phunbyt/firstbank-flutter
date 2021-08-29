import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class Details extends StatelessWidget {
   Details({
    required this.transKey,
    required this.transVal,
  });
  final String transKey;
  final String transVal;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$transKey:',
              style: TextStyle(color: kPryColor),
            ),
            Text(
              transVal,
              style: TextStyle(color: kPryColor),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          decoration: DottedDecoration(strokeWidth: 3),
        )
      ],
    );
  }
}
