import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../models/expenses.dart';

class ExpensesHistoryPage extends StatelessWidget {
  final List<Expense> expenses; // List of expenses to display

  const ExpensesHistoryPage({Key? key, required this.expenses})
      : super(key: key);

  DatabaseFactory? get databaseFactoryFfi => null;

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
            subtitle: Text(
                'Category: ${expense.category}\nDate: ${expense.date.toString()}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _saveExpensesToDatabase(expenses);
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  Future<void> _saveExpensesToDatabase(List<Expense> expenses) async {
    // Initialize database factory for sqflite_common_ffi
    databaseFactory = databaseFactoryFfi;

    // Open the database
    final database = await openDatabase(
      // Set the path to the database file
      join(await getDatabasesPath(), 'expenses_database.db'),

      // When the database is first created, create a table to store expenses
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE expenses(id INTEGER PRIMARY KEY, amount REAL, category TEXT, date TEXT)',
        );
      },

      // Set the version. This executes the onCreate function and provides a path to perform database upgrades and downgrades in the future.
      version: 1,
    );

    // Insert each expense into the database
    for (var expense in expenses) {
      await database.insert(
        'expenses',
        expense.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
