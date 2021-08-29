import './graph_model.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import '../constants.dart';

List<GraphDetails> graphData = [
  GraphDetails(
    month: 'Apr',
    amount: 22228,
    color: chart.ColorUtil.fromDartColor(kIconColor),
  ),
  GraphDetails(
    month: 'May',
    amount: 2888,
    color: chart.ColorUtil.fromDartColor(kIconColor),
  ),
  GraphDetails(
    month: 'Jun',
    amount: 28444,
    color: chart.ColorUtil.fromDartColor(kPryColor),
  ),
  GraphDetails(
    month: 'Jul',
    amount: 28666,
    color: chart.ColorUtil.fromDartColor(kIconColor),
  ),
  GraphDetails(
    month: 'Aug',
    amount: 33332,
    color: chart.ColorUtil.fromDartColor(kIconColor),
  ),
];
