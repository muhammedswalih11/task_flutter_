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
}

enum RewardBoxType { gradient, white }

final List<RewardBoxModel> rewardBoxes = [
  RewardBoxModel(type: RewardBoxType.gradient, title: s.rewardBoxtext1),

  RewardBoxModel(
    type: RewardBoxType.white,
    title: s.rewardBoxtext2,
    progressPercentage: 0.7,
  ),
];

class spendItem {
  final String name;
  final String category;
  final String amount;
  final String imagePath;
  spendItem({
    required this.name,
    required this.category,
    required this.amount,
    required this.imagePath,
  });
}
