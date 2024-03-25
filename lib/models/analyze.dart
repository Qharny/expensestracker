import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'expenses.dart';

class AnalyticsPage extends StatelessWidget {
  final List<charts.Series<Expense, String>>
      seriesList; // List of chart series to display

  const AnalyticsPage(this.seriesList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: charts.BarChart(
            seriesList,
            animate: true,
            vertical: false,
          ),
        ),
      ),
    );
  }
}
