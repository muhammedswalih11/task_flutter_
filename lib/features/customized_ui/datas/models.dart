import 'package:flutter/material.dart';

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
  RewardBoxModel(type: RewardBoxType.gradient, title: 'New Reward\nUnlocked'),

  RewardBoxModel(
    type: RewardBoxType.white,
    title: '2 more transaction away\nfrom unlocking this\nreward',
    progressPercentage: 0.7,
  ),
  RewardBoxModel(
    type: RewardBoxType.white,
    title: '2 transaction away\nfrom unlocking this\nreward',
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
