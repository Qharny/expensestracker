import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'expenses.dart';

// ignore: must_be_immutable
class AnalyticsPage extends StatelessWidget {
  late final List<charts.Series<Expense, String>>
      seriesList; // List of chart series to display
  List<charts.Series<Expense, String>> seriesList2 = [
    charts.Series(
      id: 'expenses',
      data: expenses, // List of Expense objects
      domainFn: (Expense expense, _) =>
          expense.category, // Function to extract category for X-axis
      measureFn: (Expense expense, _) =>
          expense.amount, // Function to extract amount for Y-axis
    ),
  ];

  AnalyticsPage({super.key, required List<dynamic> seriesList});

  static get expenses => null;

  // const AnalyticsPage(this.seriesList, {super.key});

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
