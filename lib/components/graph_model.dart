import 'package:charts_flutter/flutter.dart' as chart;

class GraphDetails {

GraphDetails({
required this.month,    
required this.amount,    
required this.color,
  });

  final String month;
  final int amount;
  final chart.Color color;

  
}
