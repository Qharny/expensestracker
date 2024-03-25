import 'package:flutter/material.dart';
import '../../models/expenses.dart';

class ExpensesHistoryPage extends StatelessWidget {
  final List<Expense> expenses; // List of expenses to display

  const ExpensesHistoryPage({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense History'),
      ),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          Expense expense = expenses[index];
          return ListTile(
            title: Text('Amount: ${expense.amount.toString()}'),
            subtitle: Text('Category: ${expense.category}\nDate: ${expense.date.toString()}'),
          );
        },
      ),
    );
  }
}
