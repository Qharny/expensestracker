import 'package:expensestracker/screen/views/settings.dart';
import 'package:flutter/material.dart';
import 'views/view_expenses.dart';
import 'views/add_expenses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Handle menu item selection
              if (result == 'Settings') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SettingsPage()));
              } else if (result == "Logout") {
                // Handle logout functionality here
              } else {
                // Handle other menu items here...
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Settings',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
              // Add more menu items here if needed
            ],
          ),
        ],
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
