import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';

part 'models.freezed.dart';
part 'models.g.dart';

final s = DefaultStrings.instance;

@freezed
class BillCardModel with _$BillCardModel {
  const factory BillCardModel({
    required String imageUrl,
    required String title,
    required String amount,
    @JsonKey(ignore: true) @Default(Icons.arrow_upward) IconData trialIcon,
  }) = _BillCardModel;

  factory BillCardModel.fromJson(Map<String, dynamic> json) => _$BillCardModelFromJson(json);
}

@freezed
class SpendItem with _$SpendItem {
  const factory SpendItem({
    required String name,
    required String category,
    required String amount,
    required String imagePath,
  }) = _SpendItem;

  factory SpendItem.fromJson(Map<String, dynamic> json) => _$SpendItemFromJson(json);
}

@freezed
class RewardBoxModel with _$RewardBoxModel {
  const factory RewardBoxModel({
    required RewardBoxType type,
    required String title,
    @Default(0.0) double progressPercentage,
  }) = _RewardBoxModel;

  factory RewardBoxModel.fromJson(Map<String, dynamic> json) => _$RewardBoxModelFromJson(json);
}

@JsonEnum(alwaysCreate: true)
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

@freezed
class CcBillModel with _$CcBillModel {
  const factory CcBillModel({
    required String month,
    required String dueAmount,
    required String dueDate,
  }) = _CcBillModel;

  factory CcBillModel.fromJson(Map<String, dynamic> json) => _$CcBillModelFromJson(json);
}







