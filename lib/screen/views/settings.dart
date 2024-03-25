// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _currencySymbol = '\$'; // Default currency symbol
  String _dateFormat = 'MM/dd/yyyy'; // Default date format

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Currency Symbol:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: _currencySymbol,
              onChanged: (newValue) {
                setState(() {
                  _currencySymbol = newValue!;
                });
              },
              items: <String>['\$', '€', '£', '¥']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Date Format:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: _dateFormat,
              onChanged: (newValue) {
                setState(() {
                  _dateFormat = newValue!;
                });
              },
              items: <String>['MM/dd/yyyy', 'dd/MM/yyyy', 'yyyy/MM/dd']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save settings to preferences or database
                _saveSettings();
                Navigator.pop(context);
              },
              child: const Text('Save Settings'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Account Settings page
                Navigator.pushNamed(context, '/account_settings');
              },
              child: const Text('Account Settings'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveSettings() {
    // Save settings to preferences or database
    print('Currency Symbol: $_currencySymbol');
    print('Date Format: $_dateFormat');
  }
}
