// screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
