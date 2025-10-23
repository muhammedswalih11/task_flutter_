import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@JsonEnum(alwaysCreate: true)
enum BillStatus { active, paid }

@freezed
class Bill with _$Bill {
  const factory Bill({
    required String imageAsset,
    required String name,
    required double amount,
    required BillStatus status,
    required String dueDate,
    DateTime? rawDueDate,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}

@freezed
class RechargeCardModel with _$RechargeCardModel {
  const factory RechargeCardModel({
    required String imagePath,
    required String title,
    required String type,
    required String amount,
  }) = _RechargeCardModel;

  factory RechargeCardModel.fromJson(Map<String, dynamic> json) => _$RechargeCardModelFromJson(json);
}
