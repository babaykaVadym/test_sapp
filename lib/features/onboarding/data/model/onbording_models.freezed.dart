// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onbording_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingStepItem {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get priorityValue => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingStepItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingStepItemCopyWith<OnboardingStepItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStepItemCopyWith<$Res> {
  factory $OnboardingStepItemCopyWith(
          OnboardingStepItem value, $Res Function(OnboardingStepItem) then) =
      _$OnboardingStepItemCopyWithImpl<$Res, OnboardingStepItem>;
  @useResult
  $Res call({String label, String value, int priorityValue});
}

/// @nodoc
class _$OnboardingStepItemCopyWithImpl<$Res, $Val extends OnboardingStepItem>
    implements $OnboardingStepItemCopyWith<$Res> {
  _$OnboardingStepItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingStepItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? priorityValue = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      priorityValue: null == priorityValue
          ? _value.priorityValue
          : priorityValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStepItemImplCopyWith<$Res>
    implements $OnboardingStepItemCopyWith<$Res> {
  factory _$$OnboardingStepItemImplCopyWith(_$OnboardingStepItemImpl value,
          $Res Function(_$OnboardingStepItemImpl) then) =
      __$$OnboardingStepItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value, int priorityValue});
}

/// @nodoc
class __$$OnboardingStepItemImplCopyWithImpl<$Res>
    extends _$OnboardingStepItemCopyWithImpl<$Res, _$OnboardingStepItemImpl>
    implements _$$OnboardingStepItemImplCopyWith<$Res> {
  __$$OnboardingStepItemImplCopyWithImpl(_$OnboardingStepItemImpl _value,
      $Res Function(_$OnboardingStepItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingStepItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? priorityValue = null,
  }) {
    return _then(_$OnboardingStepItemImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      priorityValue: null == priorityValue
          ? _value.priorityValue
          : priorityValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnboardingStepItemImpl implements _OnboardingStepItem {
  const _$OnboardingStepItemImpl(
      {required this.label, this.value = '', this.priorityValue = 0});

  @override
  final String label;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final int priorityValue;

  @override
  String toString() {
    return 'OnboardingStepItem(label: $label, value: $value, priorityValue: $priorityValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStepItemImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.priorityValue, priorityValue) ||
                other.priorityValue == priorityValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, value, priorityValue);

  /// Create a copy of OnboardingStepItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStepItemImplCopyWith<_$OnboardingStepItemImpl> get copyWith =>
      __$$OnboardingStepItemImplCopyWithImpl<_$OnboardingStepItemImpl>(
          this, _$identity);
}

abstract class _OnboardingStepItem implements OnboardingStepItem {
  const factory _OnboardingStepItem(
      {required final String label,
      final String value,
      final int priorityValue}) = _$OnboardingStepItemImpl;

  @override
  String get label;
  @override
  String get value;
  @override
  int get priorityValue;

  /// Create a copy of OnboardingStepItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingStepItemImplCopyWith<_$OnboardingStepItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String? get fullName => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  String? get relationshipStatus => throw _privateConstructorUsedError;
  int? get kids => throw _privateConstructorUsedError;
  int? get techAffinity => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get identifiesAs => throw _privateConstructorUsedError;
  String? get joinedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String? fullName,
      String? sex,
      String? relationshipStatus,
      int? kids,
      int? techAffinity,
      String? birthDate,
      String? identifiesAs,
      String? joinedAt});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? sex = freezed,
    Object? relationshipStatus = freezed,
    Object? kids = freezed,
    Object? techAffinity = freezed,
    Object? birthDate = freezed,
    Object? identifiesAs = freezed,
    Object? joinedAt = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kids: freezed == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as int?,
      techAffinity: freezed == techAffinity
          ? _value.techAffinity
          : techAffinity // ignore: cast_nullable_to_non_nullable
              as int?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      identifiesAs: freezed == identifiesAs
          ? _value.identifiesAs
          : identifiesAs // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? sex,
      String? relationshipStatus,
      int? kids,
      int? techAffinity,
      String? birthDate,
      String? identifiesAs,
      String? joinedAt});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? sex = freezed,
    Object? relationshipStatus = freezed,
    Object? kids = freezed,
    Object? techAffinity = freezed,
    Object? birthDate = freezed,
    Object? identifiesAs = freezed,
    Object? joinedAt = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kids: freezed == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as int?,
      techAffinity: freezed == techAffinity
          ? _value.techAffinity
          : techAffinity // ignore: cast_nullable_to_non_nullable
              as int?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      identifiesAs: freezed == identifiesAs
          ? _value.identifiesAs
          : identifiesAs // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {this.fullName,
      this.sex,
      this.relationshipStatus,
      this.kids,
      this.techAffinity,
      this.birthDate,
      this.identifiesAs,
      this.joinedAt});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? sex;
  @override
  final String? relationshipStatus;
  @override
  final int? kids;
  @override
  final int? techAffinity;
  @override
  final String? birthDate;
  @override
  final String? identifiesAs;
  @override
  final String? joinedAt;

  @override
  String toString() {
    return 'ProfileModel(fullName: $fullName, sex: $sex, relationshipStatus: $relationshipStatus, kids: $kids, techAffinity: $techAffinity, birthDate: $birthDate, identifiesAs: $identifiesAs, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.relationshipStatus, relationshipStatus) ||
                other.relationshipStatus == relationshipStatus) &&
            (identical(other.kids, kids) || other.kids == kids) &&
            (identical(other.techAffinity, techAffinity) ||
                other.techAffinity == techAffinity) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.identifiesAs, identifiesAs) ||
                other.identifiesAs == identifiesAs) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      sex,
      relationshipStatus,
      kids,
      techAffinity,
      birthDate,
      identifiesAs,
      joinedAt);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final String? fullName,
      final String? sex,
      final String? relationshipStatus,
      final int? kids,
      final int? techAffinity,
      final String? birthDate,
      final String? identifiesAs,
      final String? joinedAt}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get sex;
  @override
  String? get relationshipStatus;
  @override
  int? get kids;
  @override
  int? get techAffinity;
  @override
  String? get birthDate;
  @override
  String? get identifiesAs;
  @override
  String? get joinedAt;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
