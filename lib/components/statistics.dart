import 'package:flutter/material.dart';
import '../constants.dart';
import './graph.dart';
import './graph_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './graph_model.dart';

class Statistics extends StatelessWidget {
  final List<GraphDetails> data = graphData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MY STATISTICS',
                style: kButtonStyle,
              ),
              FaIcon(
                FontAwesomeIcons.chevronDown,
                color: kPryColor,
              )
            ],
          ),
          Expanded(child: ExpenseGraph(data: data))
        ],
      ),
    );
  }
}
