// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_determination_diagnosis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultItemModel _$ResultItemModelFromJson(Map<String, dynamic> json) {
  return _ResultItemModel.fromJson(json);
}

/// @nodoc
mixin _$ResultItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  int get scaleMax => throw _privateConstructorUsedError;

  /// Serializes this ResultItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultItemModelCopyWith<ResultItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultItemModelCopyWith<$Res> {
  factory $ResultItemModelCopyWith(
          ResultItemModel value, $Res Function(ResultItemModel) then) =
      _$ResultItemModelCopyWithImpl<$Res, ResultItemModel>;
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? description,
      int result,
      int scaleMax});
}

/// @nodoc
class _$ResultItemModelCopyWithImpl<$Res, $Val extends ResultItemModel>
    implements $ResultItemModelCopyWith<$Res> {
  _$ResultItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? result = null,
    Object? scaleMax = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      scaleMax: null == scaleMax
          ? _value.scaleMax
          : scaleMax // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultItemModelImplCopyWith<$Res>
    implements $ResultItemModelCopyWith<$Res> {
  factory _$$ResultItemModelImplCopyWith(_$ResultItemModelImpl value,
          $Res Function(_$ResultItemModelImpl) then) =
      __$$ResultItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? description,
      int result,
      int scaleMax});
}

/// @nodoc
class __$$ResultItemModelImplCopyWithImpl<$Res>
    extends _$ResultItemModelCopyWithImpl<$Res, _$ResultItemModelImpl>
    implements _$$ResultItemModelImplCopyWith<$Res> {
  __$$ResultItemModelImplCopyWithImpl(
      _$ResultItemModelImpl _value, $Res Function(_$ResultItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? result = null,
    Object? scaleMax = null,
  }) {
    return _then(_$ResultItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      scaleMax: null == scaleMax
          ? _value.scaleMax
          : scaleMax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultItemModelImpl implements _ResultItemModel {
  const _$ResultItemModelImpl(
      {this.id,
      this.type,
      this.description,
      this.result = 0,
      this.scaleMax = 0});

  factory _$ResultItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultItemModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? description;
  @override
  @JsonKey()
  final int result;
  @override
  @JsonKey()
  final int scaleMax;

  @override
  String toString() {
    return 'ResultItemModel(id: $id, type: $type, description: $description, result: $result, scaleMax: $scaleMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.scaleMax, scaleMax) ||
                other.scaleMax == scaleMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, description, result, scaleMax);

  /// Create a copy of ResultItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultItemModelImplCopyWith<_$ResultItemModelImpl> get copyWith =>
      __$$ResultItemModelImplCopyWithImpl<_$ResultItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultItemModelImplToJson(
      this,
    );
  }
}

abstract class _ResultItemModel implements ResultItemModel {
  const factory _ResultItemModel(
      {final String? id,
      final String? type,
      final String? description,
      final int result,
      final int scaleMax}) = _$ResultItemModelImpl;

  factory _ResultItemModel.fromJson(Map<String, dynamic> json) =
      _$ResultItemModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get description;
  @override
  int get result;
  @override
  int get scaleMax;

  /// Create a copy of ResultItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultItemModelImplCopyWith<_$ResultItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
