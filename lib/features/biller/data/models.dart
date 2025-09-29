import 'dart:ui';

class Bill {
  final String imageAsset;
  final String name;
  final double amount;

  final BillStatus status;

  Bill({
    required this.imageAsset,
    required this.name,
    required this.amount,
    required this.status,
  });
}

enum BillStatus { active, paid }
