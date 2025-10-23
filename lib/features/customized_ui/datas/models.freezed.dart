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

BillCardModel _$BillCardModelFromJson(Map<String, dynamic> json) {
  return _BillCardModel.fromJson(json);
}

/// @nodoc
mixin _$BillCardModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  IconData get trialIcon => throw _privateConstructorUsedError;

  /// Serializes this BillCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillCardModelCopyWith<BillCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillCardModelCopyWith<$Res> {
  factory $BillCardModelCopyWith(
    BillCardModel value,
    $Res Function(BillCardModel) then,
  ) = _$BillCardModelCopyWithImpl<$Res, BillCardModel>;
  @useResult
  $Res call({
    String imageUrl,
    String title,
    String amount,
    @JsonKey(ignore: true) IconData trialIcon,
  });
}

/// @nodoc
class _$BillCardModelCopyWithImpl<$Res, $Val extends BillCardModel>
    implements $BillCardModelCopyWith<$Res> {
  _$BillCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? amount = null,
    Object? trialIcon = null,
  }) {
    return _then(
      _value.copyWith(
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String,
            trialIcon: null == trialIcon
                ? _value.trialIcon
                : trialIcon // ignore: cast_nullable_to_non_nullable
                      as IconData,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BillCardModelImplCopyWith<$Res>
    implements $BillCardModelCopyWith<$Res> {
  factory _$$BillCardModelImplCopyWith(
    _$BillCardModelImpl value,
    $Res Function(_$BillCardModelImpl) then,
  ) = __$$BillCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String imageUrl,
    String title,
    String amount,
    @JsonKey(ignore: true) IconData trialIcon,
  });
}

/// @nodoc
class __$$BillCardModelImplCopyWithImpl<$Res>
    extends _$BillCardModelCopyWithImpl<$Res, _$BillCardModelImpl>
    implements _$$BillCardModelImplCopyWith<$Res> {
  __$$BillCardModelImplCopyWithImpl(
    _$BillCardModelImpl _value,
    $Res Function(_$BillCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BillCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? amount = null,
    Object? trialIcon = null,
  }) {
    return _then(
      _$BillCardModelImpl(
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        trialIcon: null == trialIcon
            ? _value.trialIcon
            : trialIcon // ignore: cast_nullable_to_non_nullable
                  as IconData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillCardModelImpl implements _BillCardModel {
  const _$BillCardModelImpl({
    required this.imageUrl,
    required this.title,
    required this.amount,
    @JsonKey(ignore: true) this.trialIcon = Icons.arrow_upward,
  });

  factory _$BillCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillCardModelImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String amount;
  @override
  @JsonKey(ignore: true)
  final IconData trialIcon;

  @override
  String toString() {
    return 'BillCardModel(imageUrl: $imageUrl, title: $title, amount: $amount, trialIcon: $trialIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillCardModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.trialIcon, trialIcon) ||
                other.trialIcon == trialIcon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, title, amount, trialIcon);

  /// Create a copy of BillCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillCardModelImplCopyWith<_$BillCardModelImpl> get copyWith =>
      __$$BillCardModelImplCopyWithImpl<_$BillCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillCardModelImplToJson(this);
  }
}

abstract class _BillCardModel implements BillCardModel {
  const factory _BillCardModel({
    required final String imageUrl,
    required final String title,
    required final String amount,
    @JsonKey(ignore: true) final IconData trialIcon,
  }) = _$BillCardModelImpl;

  factory _BillCardModel.fromJson(Map<String, dynamic> json) =
      _$BillCardModelImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  IconData get trialIcon;

  /// Create a copy of BillCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillCardModelImplCopyWith<_$BillCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpendItem _$SpendItemFromJson(Map<String, dynamic> json) {
  return _SpendItem.fromJson(json);
}

/// @nodoc
mixin _$SpendItem {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this SpendItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpendItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpendItemCopyWith<SpendItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendItemCopyWith<$Res> {
  factory $SpendItemCopyWith(SpendItem value, $Res Function(SpendItem) then) =
      _$SpendItemCopyWithImpl<$Res, SpendItem>;
  @useResult
  $Res call({String name, String category, String amount, String imagePath});
}

/// @nodoc
class _$SpendItemCopyWithImpl<$Res, $Val extends SpendItem>
    implements $SpendItemCopyWith<$Res> {
  _$SpendItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpendItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? amount = null,
    Object? imagePath = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String,
            imagePath: null == imagePath
                ? _value.imagePath
                : imagePath // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpendItemImplCopyWith<$Res>
    implements $SpendItemCopyWith<$Res> {
  factory _$$SpendItemImplCopyWith(
    _$SpendItemImpl value,
    $Res Function(_$SpendItemImpl) then,
  ) = __$$SpendItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String category, String amount, String imagePath});
}

/// @nodoc
class __$$SpendItemImplCopyWithImpl<$Res>
    extends _$SpendItemCopyWithImpl<$Res, _$SpendItemImpl>
    implements _$$SpendItemImplCopyWith<$Res> {
  __$$SpendItemImplCopyWithImpl(
    _$SpendItemImpl _value,
    $Res Function(_$SpendItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpendItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? amount = null,
    Object? imagePath = null,
  }) {
    return _then(
      _$SpendItemImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpendItemImpl implements _SpendItem {
  const _$SpendItemImpl({
    required this.name,
    required this.category,
    required this.amount,
    required this.imagePath,
  });

  factory _$SpendItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpendItemImplFromJson(json);

  @override
  final String name;
  @override
  final String category;
  @override
  final String amount;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'SpendItem(name: $name, category: $category, amount: $amount, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, category, amount, imagePath);

  /// Create a copy of SpendItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendItemImplCopyWith<_$SpendItemImpl> get copyWith =>
      __$$SpendItemImplCopyWithImpl<_$SpendItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpendItemImplToJson(this);
  }
}

abstract class _SpendItem implements SpendItem {
  const factory _SpendItem({
    required final String name,
    required final String category,
    required final String amount,
    required final String imagePath,
  }) = _$SpendItemImpl;

  factory _SpendItem.fromJson(Map<String, dynamic> json) =
      _$SpendItemImpl.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  String get amount;
  @override
  String get imagePath;

  /// Create a copy of SpendItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpendItemImplCopyWith<_$SpendItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardBoxModel _$RewardBoxModelFromJson(Map<String, dynamic> json) {
  return _RewardBoxModel.fromJson(json);
}

/// @nodoc
mixin _$RewardBoxModel {
  RewardBoxType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get progressPercentage => throw _privateConstructorUsedError;

  /// Serializes this RewardBoxModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardBoxModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardBoxModelCopyWith<RewardBoxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardBoxModelCopyWith<$Res> {
  factory $RewardBoxModelCopyWith(
    RewardBoxModel value,
    $Res Function(RewardBoxModel) then,
  ) = _$RewardBoxModelCopyWithImpl<$Res, RewardBoxModel>;
  @useResult
  $Res call({RewardBoxType type, String title, double progressPercentage});
}

/// @nodoc
class _$RewardBoxModelCopyWithImpl<$Res, $Val extends RewardBoxModel>
    implements $RewardBoxModelCopyWith<$Res> {
  _$RewardBoxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardBoxModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as RewardBoxType,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RewardBoxModelImplCopyWith<$Res>
    implements $RewardBoxModelCopyWith<$Res> {
  factory _$$RewardBoxModelImplCopyWith(
    _$RewardBoxModelImpl value,
    $Res Function(_$RewardBoxModelImpl) then,
  ) = __$$RewardBoxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardBoxType type, String title, double progressPercentage});
}

/// @nodoc
class __$$RewardBoxModelImplCopyWithImpl<$Res>
    extends _$RewardBoxModelCopyWithImpl<$Res, _$RewardBoxModelImpl>
    implements _$$RewardBoxModelImplCopyWith<$Res> {
  __$$RewardBoxModelImplCopyWithImpl(
    _$RewardBoxModelImpl _value,
    $Res Function(_$RewardBoxModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardBoxModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _$RewardBoxModelImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RewardBoxType,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardBoxModelImpl implements _RewardBoxModel {
  const _$RewardBoxModelImpl({
    required this.type,
    required this.title,
    this.progressPercentage = 0.0,
  });

  factory _$RewardBoxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardBoxModelImplFromJson(json);

  @override
  final RewardBoxType type;
  @override
  final String title;
  @override
  @JsonKey()
  final double progressPercentage;

  @override
  String toString() {
    return 'RewardBoxModel(type: $type, title: $title, progressPercentage: $progressPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardBoxModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, progressPercentage);

  /// Create a copy of RewardBoxModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardBoxModelImplCopyWith<_$RewardBoxModelImpl> get copyWith =>
      __$$RewardBoxModelImplCopyWithImpl<_$RewardBoxModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardBoxModelImplToJson(this);
  }
}

abstract class _RewardBoxModel implements RewardBoxModel {
  const factory _RewardBoxModel({
    required final RewardBoxType type,
    required final String title,
    final double progressPercentage,
  }) = _$RewardBoxModelImpl;

  factory _RewardBoxModel.fromJson(Map<String, dynamic> json) =
      _$RewardBoxModelImpl.fromJson;

  @override
  RewardBoxType get type;
  @override
  String get title;
  @override
  double get progressPercentage;

  /// Create a copy of RewardBoxModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardBoxModelImplCopyWith<_$RewardBoxModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CcBillModel _$CcBillModelFromJson(Map<String, dynamic> json) {
  return _CcBillModel.fromJson(json);
}

/// @nodoc
mixin _$CcBillModel {
  String get month => throw _privateConstructorUsedError;
  String get dueAmount => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;

  /// Serializes this CcBillModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CcBillModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CcBillModelCopyWith<CcBillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CcBillModelCopyWith<$Res> {
  factory $CcBillModelCopyWith(
    CcBillModel value,
    $Res Function(CcBillModel) then,
  ) = _$CcBillModelCopyWithImpl<$Res, CcBillModel>;
  @useResult
  $Res call({String month, String dueAmount, String dueDate});
}

/// @nodoc
class _$CcBillModelCopyWithImpl<$Res, $Val extends CcBillModel>
    implements $CcBillModelCopyWith<$Res> {
  _$CcBillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CcBillModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? dueAmount = null,
    Object? dueDate = null,
  }) {
    return _then(
      _value.copyWith(
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as String,
            dueAmount: null == dueAmount
                ? _value.dueAmount
                : dueAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            dueDate: null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CcBillModelImplCopyWith<$Res>
    implements $CcBillModelCopyWith<$Res> {
  factory _$$CcBillModelImplCopyWith(
    _$CcBillModelImpl value,
    $Res Function(_$CcBillModelImpl) then,
  ) = __$$CcBillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, String dueAmount, String dueDate});
}

/// @nodoc
class __$$CcBillModelImplCopyWithImpl<$Res>
    extends _$CcBillModelCopyWithImpl<$Res, _$CcBillModelImpl>
    implements _$$CcBillModelImplCopyWith<$Res> {
  __$$CcBillModelImplCopyWithImpl(
    _$CcBillModelImpl _value,
    $Res Function(_$CcBillModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CcBillModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? dueAmount = null,
    Object? dueDate = null,
  }) {
    return _then(
      _$CcBillModelImpl(
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as String,
        dueAmount: null == dueAmount
            ? _value.dueAmount
            : dueAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        dueDate: null == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CcBillModelImpl implements _CcBillModel {
  const _$CcBillModelImpl({
    required this.month,
    required this.dueAmount,
    required this.dueDate,
  });

  factory _$CcBillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CcBillModelImplFromJson(json);

  @override
  final String month;
  @override
  final String dueAmount;
  @override
  final String dueDate;

  @override
  String toString() {
    return 'CcBillModel(month: $month, dueAmount: $dueAmount, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CcBillModelImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.dueAmount, dueAmount) ||
                other.dueAmount == dueAmount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, dueAmount, dueDate);

  /// Create a copy of CcBillModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CcBillModelImplCopyWith<_$CcBillModelImpl> get copyWith =>
      __$$CcBillModelImplCopyWithImpl<_$CcBillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CcBillModelImplToJson(this);
  }
}

abstract class _CcBillModel implements CcBillModel {
  const factory _CcBillModel({
    required final String month,
    required final String dueAmount,
    required final String dueDate,
  }) = _$CcBillModelImpl;

  factory _CcBillModel.fromJson(Map<String, dynamic> json) =
      _$CcBillModelImpl.fromJson;

  @override
  String get month;
  @override
  String get dueAmount;
  @override
  String get dueDate;

  /// Create a copy of CcBillModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CcBillModelImplCopyWith<_$CcBillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
