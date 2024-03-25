import 'package:flutter/material.dart';
import 'views/view_expenses.dart';
import 'views/add_expenses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddExpenseForm(),
                  ),
                );
              },
              child: const Text('Add New Expense'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Assuming newExpense is a List<Expense>
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExpensesHistoryPage(
                      expenses: [], // Pass list containing the new expense
                    ),
                  ),
                );
              },
              child: const Text('View Expenses'),
            ),
          ],
        ),
      ),
    );
  }
}
