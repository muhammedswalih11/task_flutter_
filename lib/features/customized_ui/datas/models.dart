import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';

final s = DefaultStrings.instance;

class BillCardModel {
  final String imageUrl;
  final String title;
  final String amount;
  final IconData trialIcon;

  BillCardModel({
    required this.imageUrl,
    required this.title,
    required this.amount,
    required this.trialIcon,
  });

  factory BillCardModel.fromJson(Map<String, dynamic> json) {
    return BillCardModel(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      amount: json['amount'] as String,
      trialIcon: Icons.arrow_upward, // or map from json if needed
    );
  }
}

class SpendItem {
  final String name;
  final String category;
  final String amount;
  final String imagePath;
  SpendItem({
    required this.name,
    required this.category,
    required this.amount,
    required this.imagePath,
  });

  factory SpendItem.fromJson(Map<String, dynamic> json) {
    return SpendItem(
      name: json['name'] as String,
      category: json['category'] as String,
      amount: json['amount'] as String,
      imagePath: json['imagePath'] as String,
    );
  }
}

class RewardBoxModel {
  final RewardBoxType type;
  final String title;
  final double progressPercentage;

  RewardBoxModel({
    required this.type,
    required this.title,
    this.progressPercentage = 0.0,
  });

  factory RewardBoxModel.fromJson(Map<String, dynamic> json) {
    return RewardBoxModel(
      type: json['type'] == 'white'
          ? RewardBoxType.white
          : RewardBoxType.gradient,
      title: json['title'] as String,
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
    );
  }
}

enum RewardBoxType { gradient, white }

final List<RewardBoxModel> rewardBoxes = [
  RewardBoxModel(type: RewardBoxType.gradient, title: s.rewardBoxtext1),

  RewardBoxModel(
    type: RewardBoxType.white,
    title: s.rewardBoxtext2,
    progressPercentage: 0.7,
  ),

  RewardBoxModel(
    type: RewardBoxType.white,
    title: s.rewardBoxtext3,
    progressPercentage: 0.7,
  ),
];

class CcBillModel {
  final String month;
  final String dueAmount;
  final String dueDate;

  CcBillModel({
    required this.month,
    required this.dueAmount,
    required this.dueDate,
  });

  factory CcBillModel.fromJson(Map<String, dynamic> json) {
    return CcBillModel(
      month: json['month'],
      dueAmount: json['dueAmount'],
      dueDate: json['dueDate'],
    );
  }
}







// class BillCardModel {
//   final String imageUrl;
//   final String title;
//   final String amount;
//   final IconData trialIcon;

//   BillCardModel({
//     required this.imageUrl,
//     required this.title,
//     required this.amount,
//     required this.trialIcon,
//   });

//   // ✅ ADDED:
//   factory BillCardModel.fromJson(Map<String, dynamic> json) {
//     return BillCardModel(
//       imageUrl: json['imageUrl'] as String,
//       title: json['title'] as String,
//       amount: json['amount'] as String,
//       trialIcon: Icons.arrow_upward, // or map from json if needed
//     );
//   }
// }

// class SpendItem {
//   final String name;
//   final String category;
//   final String amount;
//   final String imagePath;

//   SpendItem({
//     required this.name,
//     required this.category,
//     required this.amount,
//     required this.imagePath,
//   });

//   // ✅ ADDED:
//   factory SpendItem.fromJson(Map<String, dynamic> json) {
//     return SpendItem(
//       name: json['name'] as String,
//       category: json['category'] as String,
//       amount: json['amount'] as String,
//       imagePath: json['imagePath'] as String,
//     );
//   }
// }

// class RewardBoxModel {
//   final RewardBoxType type;
//   final String title;
//   final double progressPercentage;

//   RewardBoxModel({
//     required this.type,
//     required this.title,
//     this.progressPercentage = 0.0,
//   });

//   // ✅ ADDED:
//   factory RewardBoxModel.fromJson(Map<String, dynamic> json) {
//     return RewardBoxModel(
//       type: json['type'] == 'white' ? RewardBoxType.white : RewardBoxType.gradient,
//       title: json['title'] as String,
//       progressPercentage: (json['progressPercentage'] as num).toDouble(),
//     );
//   }
// }