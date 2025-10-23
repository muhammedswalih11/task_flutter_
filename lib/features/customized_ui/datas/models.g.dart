// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillCardModelImpl _$$BillCardModelImplFromJson(Map<String, dynamic> json) =>
    _$BillCardModelImpl(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$BillCardModelImplToJson(_$BillCardModelImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'amount': instance.amount,
    };

_$SpendItemImpl _$$SpendItemImplFromJson(Map<String, dynamic> json) =>
    _$SpendItemImpl(
      name: json['name'] as String,
      category: json['category'] as String,
      amount: json['amount'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$SpendItemImplToJson(_$SpendItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'amount': instance.amount,
      'imagePath': instance.imagePath,
    };

_$RewardBoxModelImpl _$$RewardBoxModelImplFromJson(Map<String, dynamic> json) =>
    _$RewardBoxModelImpl(
      type: $enumDecode(_$RewardBoxTypeEnumMap, json['type']),
      title: json['title'] as String,
      progressPercentage:
          (json['progressPercentage'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$RewardBoxModelImplToJson(
  _$RewardBoxModelImpl instance,
) => <String, dynamic>{
  'type': _$RewardBoxTypeEnumMap[instance.type]!,
  'title': instance.title,
  'progressPercentage': instance.progressPercentage,
};

const _$RewardBoxTypeEnumMap = {
  RewardBoxType.gradient: 'gradient',
  RewardBoxType.white: 'white',
};

_$CcBillModelImpl _$$CcBillModelImplFromJson(Map<String, dynamic> json) =>
    _$CcBillModelImpl(
      month: json['month'] as String,
      dueAmount: json['dueAmount'] as String,
      dueDate: json['dueDate'] as String,
    );

Map<String, dynamic> _$$CcBillModelImplToJson(_$CcBillModelImpl instance) =>
    <String, dynamic>{
      'month': instance.month,
      'dueAmount': instance.dueAmount,
      'dueDate': instance.dueDate,
    };
