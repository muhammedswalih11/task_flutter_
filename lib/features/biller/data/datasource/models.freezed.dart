// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Bill _$BillFromJson(Map<String, dynamic> json) {
  return _Bill.fromJson(json);
}

/// @nodoc
mixin _$Bill {
  String get imageAsset => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  BillStatus get status => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  DateTime? get rawDueDate => throw _privateConstructorUsedError;

  /// Serializes this Bill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillCopyWith<Bill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillCopyWith<$Res> {
  factory $BillCopyWith(Bill value, $Res Function(Bill) then) =
      _$BillCopyWithImpl<$Res, Bill>;
  @useResult
  $Res call({
    String imageAsset,
    String name,
    double amount,
    BillStatus status,
    String dueDate,
    DateTime? rawDueDate,
  });
}

/// @nodoc
class _$BillCopyWithImpl<$Res, $Val extends Bill>
    implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageAsset = null,
    Object? name = null,
    Object? amount = null,
    Object? status = null,
    Object? dueDate = null,
    Object? rawDueDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            imageAsset: null == imageAsset
                ? _value.imageAsset
                : imageAsset // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BillStatus,
            dueDate: null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as String,
            rawDueDate: freezed == rawDueDate
                ? _value.rawDueDate
                : rawDueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BillImplCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$$BillImplCopyWith(
    _$BillImpl value,
    $Res Function(_$BillImpl) then,
  ) = __$$BillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String imageAsset,
    String name,
    double amount,
    BillStatus status,
    String dueDate,
    DateTime? rawDueDate,
  });
}

/// @nodoc
class __$$BillImplCopyWithImpl<$Res>
    extends _$BillCopyWithImpl<$Res, _$BillImpl>
    implements _$$BillImplCopyWith<$Res> {
  __$$BillImplCopyWithImpl(_$BillImpl _value, $Res Function(_$BillImpl) _then)
    : super(_value, _then);

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageAsset = null,
    Object? name = null,
    Object? amount = null,
    Object? status = null,
    Object? dueDate = null,
    Object? rawDueDate = freezed,
  }) {
    return _then(
      _$BillImpl(
        imageAsset: null == imageAsset
            ? _value.imageAsset
            : imageAsset // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BillStatus,
        dueDate: null == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as String,
        rawDueDate: freezed == rawDueDate
            ? _value.rawDueDate
            : rawDueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillImpl implements _Bill {
  const _$BillImpl({
    required this.imageAsset,
    required this.name,
    required this.amount,
    required this.status,
    required this.dueDate,
    this.rawDueDate,
  });

  factory _$BillImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillImplFromJson(json);

  @override
  final String imageAsset;
  @override
  final String name;
  @override
  final double amount;
  @override
  final BillStatus status;
  @override
  final String dueDate;
  @override
  final DateTime? rawDueDate;

  @override
  String toString() {
    return 'Bill(imageAsset: $imageAsset, name: $name, amount: $amount, status: $status, dueDate: $dueDate, rawDueDate: $rawDueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillImpl &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.rawDueDate, rawDueDate) ||
                other.rawDueDate == rawDueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    imageAsset,
    name,
    amount,
    status,
    dueDate,
    rawDueDate,
  );

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillImplCopyWith<_$BillImpl> get copyWith =>
      __$$BillImplCopyWithImpl<_$BillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillImplToJson(this);
  }
}

abstract class _Bill implements Bill {
  const factory _Bill({
    required final String imageAsset,
    required final String name,
    required final double amount,
    required final BillStatus status,
    required final String dueDate,
    final DateTime? rawDueDate,
  }) = _$BillImpl;

  factory _Bill.fromJson(Map<String, dynamic> json) = _$BillImpl.fromJson;

  @override
  String get imageAsset;
  @override
  String get name;
  @override
  double get amount;
  @override
  BillStatus get status;
  @override
  String get dueDate;
  @override
  DateTime? get rawDueDate;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillImplCopyWith<_$BillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RechargeCardModel _$RechargeCardModelFromJson(Map<String, dynamic> json) {
  return _RechargeCardModel.fromJson(json);
}

/// @nodoc
mixin _$RechargeCardModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  /// Serializes this RechargeCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RechargeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RechargeCardModelCopyWith<RechargeCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargeCardModelCopyWith<$Res> {
  factory $RechargeCardModelCopyWith(
    RechargeCardModel value,
    $Res Function(RechargeCardModel) then,
  ) = _$RechargeCardModelCopyWithImpl<$Res, RechargeCardModel>;
  @useResult
  $Res call({String imagePath, String title, String type, String amount});
}

/// @nodoc
class _$RechargeCardModelCopyWithImpl<$Res, $Val extends RechargeCardModel>
    implements $RechargeCardModelCopyWith<$Res> {
  _$RechargeCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RechargeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(
      _value.copyWith(
            imagePath: null == imagePath
                ? _value.imagePath
                : imagePath // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RechargeCardModelImplCopyWith<$Res>
    implements $RechargeCardModelCopyWith<$Res> {
  factory _$$RechargeCardModelImplCopyWith(
    _$RechargeCardModelImpl value,
    $Res Function(_$RechargeCardModelImpl) then,
  ) = __$$RechargeCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String title, String type, String amount});
}

/// @nodoc
class __$$RechargeCardModelImplCopyWithImpl<$Res>
    extends _$RechargeCardModelCopyWithImpl<$Res, _$RechargeCardModelImpl>
    implements _$$RechargeCardModelImplCopyWith<$Res> {
  __$$RechargeCardModelImplCopyWithImpl(
    _$RechargeCardModelImpl _value,
    $Res Function(_$RechargeCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RechargeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(
      _$RechargeCardModelImpl(
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RechargeCardModelImpl implements _RechargeCardModel {
  const _$RechargeCardModelImpl({
    required this.imagePath,
    required this.title,
    required this.type,
    required this.amount,
  });

  factory _$RechargeCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RechargeCardModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final String title;
  @override
  final String type;
  @override
  final String amount;

  @override
  String toString() {
    return 'RechargeCardModel(imagePath: $imagePath, title: $title, type: $type, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargeCardModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, title, type, amount);

  /// Create a copy of RechargeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeCardModelImplCopyWith<_$RechargeCardModelImpl> get copyWith =>
      __$$RechargeCardModelImplCopyWithImpl<_$RechargeCardModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RechargeCardModelImplToJson(this);
  }
}

abstract class _RechargeCardModel implements RechargeCardModel {
  const factory _RechargeCardModel({
    required final String imagePath,
    required final String title,
    required final String type,
    required final String amount,
  }) = _$RechargeCardModelImpl;

  factory _RechargeCardModel.fromJson(Map<String, dynamic> json) =
      _$RechargeCardModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get title;
  @override
  String get type;
  @override
  String get amount;

  /// Create a copy of RechargeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RechargeCardModelImplCopyWith<_$RechargeCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
