import 'package:flutter/material.dart';

import 'views/widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddExpenseForm()),
            );
          },
          child: const Text('Add New Expense'),
        ),
      ),
    );
  }
}
