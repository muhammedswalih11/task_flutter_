import 'dart:ui';

enum BillStatus { active, paid }

BillStatus billStatusFromString(String status) {
  switch (status.toLowerCase()) {
    case 'paid':
      return BillStatus.paid;
    case 'active':
    default:
      return BillStatus.active;
  }
}

class Bill {
  final String imageAsset;
  final String name;
  final double amount;
  final String dueDate;
  final DateTime? rawDueDate;
  final BillStatus status;

  Bill({
    required this.imageAsset,
    required this.name,
    required this.amount,
    required this.status,
    required this.dueDate,
    this.rawDueDate,
  });

  factory Bill.fromJson(Map<String, dynamic> json) {
    return Bill(
      imageAsset: json['imageAsset'],
      name: json['name'],
      amount: (json['amount'] as num).toDouble(),
      dueDate: json['dueDate'],
      rawDueDate: json['rawDueDate'] != null
          ? DateTime.parse(json['rawDueDate'])
          : null,
      status: billStatusFromString(json['status']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageAsset': imageAsset,
      'name': name,
      'amount': amount,
      'dueDate': dueDate,
      'rawDueDate': rawDueDate?.toIso8601String(),
      'status': status.name,
    };
  }
}

class RechargeCardModel {
  final String imagePath;
  final String title;
  final String type;
  final String amount;

  RechargeCardModel({
    required this.imagePath,
    required this.title,
    required this.type,
    required this.amount,
  });

  factory RechargeCardModel.fromJson(Map<String, dynamic> json) {
    return RechargeCardModel(
      imagePath: json['imagePath'],
      title: json['title'],
      type: json['type'],
      amount: json['amount'],
    );
  }
}
