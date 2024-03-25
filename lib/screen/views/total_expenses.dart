import 'package:flutter/material.dart';

class TotalExpensesPage extends StatelessWidget {
  final Map<String, double> totalExpenses; // Map containing total expenses by category

  const TotalExpensesPage(this.totalExpenses, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Expenses'),
      ),
      body: ListView.builder(
        itemCount: totalExpenses.length,
        itemBuilder: (context, index) {
          String category = totalExpenses.keys.toList()[index];
          double amount = totalExpenses.values.toList()[index];
          return ListTile(
            title: Text('Category: $category'),
            subtitle: Text('Total Amount: ${amount.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
