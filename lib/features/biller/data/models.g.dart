// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillImpl _$$BillImplFromJson(Map<String, dynamic> json) => _$BillImpl(
  imageAsset: json['imageAsset'] as String,
  name: json['name'] as String,
  amount: (json['amount'] as num).toDouble(),
  status: $enumDecode(_$BillStatusEnumMap, json['status']),
  dueDate: json['dueDate'] as String,
  rawDueDate: json['rawDueDate'] == null
      ? null
      : DateTime.parse(json['rawDueDate'] as String),
);

Map<String, dynamic> _$$BillImplToJson(_$BillImpl instance) =>
    <String, dynamic>{
      'imageAsset': instance.imageAsset,
      'name': instance.name,
      'amount': instance.amount,
      'status': _$BillStatusEnumMap[instance.status]!,
      'dueDate': instance.dueDate,
      'rawDueDate': instance.rawDueDate?.toIso8601String(),
    };

const _$BillStatusEnumMap = {
  BillStatus.active: 'active',
  BillStatus.paid: 'paid',
};

_$RechargeCardModelImpl _$$RechargeCardModelImplFromJson(
  Map<String, dynamic> json,
) => _$RechargeCardModelImpl(
  imagePath: json['imagePath'] as String,
  title: json['title'] as String,
  type: json['type'] as String,
  amount: json['amount'] as String,
);

Map<String, dynamic> _$$RechargeCardModelImplToJson(
  _$RechargeCardModelImpl instance,
) => <String, dynamic>{
  'imagePath': instance.imagePath,
  'title': instance.title,
  'type': instance.type,
  'amount': instance.amount,
};
