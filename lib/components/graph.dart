import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import './graph_model.dart';

class ExpenseGraph extends StatelessWidget {
  final List<GraphDetails> data;

  ExpenseGraph({required this.data});

  @override
  Widget build(BuildContext context) {
    List<chart.Series<GraphDetails, String>> series = [
      chart.Series(
        id: 'Expenses',
        data: data,
        domainFn: (GraphDetails series, _) => series.month,
        measureFn: (GraphDetails series, _) => series.amount,
        colorFn: (GraphDetails series, _) => series.color,
      )
    ];

    return chart.BarChart(series, animate: true,);
  }
}
