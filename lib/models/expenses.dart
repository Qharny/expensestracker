// models/expense.dart
class Expense {
  double amount;
  String category;
  DateTime date;

  Expense({
    required this.amount,
    required this.category,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'category': category,
      'date': date.toIso8601String(), // Convert DateTime to ISO 8601 string
    };
  }
}