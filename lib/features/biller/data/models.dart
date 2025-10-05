import 'dart:ui';

class Bill {
  final String imageAsset;
  final String name;
  final double amount;
  final String dueDate;
  final DateTime? rawDueDate; //this

  final BillStatus status;

  Bill({
    required this.imageAsset,
    required this.name,
    required this.amount,
    required this.status,
    required this.dueDate,
    this.rawDueDate,
  });
}

enum BillStatus { active, paid }
