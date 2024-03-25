import 'package:flutter/material.dart';
import '../../models/expenses.dart';


class EditExpensePage extends StatelessWidget {
  final Expense expense; // Expense to edit or delete

  const EditExpensePage(this.expense, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Expense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Amount: ${expense.amount.toString()}'),
            Text('Category: ${expense.category}'),
            Text('Date: ${expense.date.toString()}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement edit functionality
              },
              child: const Text('Edit Expense'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement delete functionality
              },
              child: const Text('Delete Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
