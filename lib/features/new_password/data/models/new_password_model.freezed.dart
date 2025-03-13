// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewPasswordModel _$NewPasswordModelFromJson(Map<String, dynamic> json) {
  return _NewPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$NewPasswordModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this NewPasswordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewPasswordModelCopyWith<NewPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordModelCopyWith<$Res> {
  factory $NewPasswordModelCopyWith(
          NewPasswordModel value, $Res Function(NewPasswordModel) then) =
      _$NewPasswordModelCopyWithImpl<$Res, NewPasswordModel>;
  @useResult
  $Res call({bool? success, String? code});
}

/// @nodoc
class _$NewPasswordModelCopyWithImpl<$Res, $Val extends NewPasswordModel>
    implements $NewPasswordModelCopyWith<$Res> {
  _$NewPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewPasswordModelImplCopyWith<$Res>
    implements $NewPasswordModelCopyWith<$Res> {
  factory _$$NewPasswordModelImplCopyWith(_$NewPasswordModelImpl value,
          $Res Function(_$NewPasswordModelImpl) then) =
      __$$NewPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? code});
}

/// @nodoc
class __$$NewPasswordModelImplCopyWithImpl<$Res>
    extends _$NewPasswordModelCopyWithImpl<$Res, _$NewPasswordModelImpl>
    implements _$$NewPasswordModelImplCopyWith<$Res> {
  __$$NewPasswordModelImplCopyWithImpl(_$NewPasswordModelImpl _value,
      $Res Function(_$NewPasswordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? code = freezed,
  }) {
    return _then(_$NewPasswordModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewPasswordModelImpl implements _NewPasswordModel {
  const _$NewPasswordModelImpl({this.success, this.code});

  factory _$NewPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewPasswordModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? code;

  @override
  String toString() {
    return 'NewPasswordModel(success: $success, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, code);

  /// Create a copy of NewPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordModelImplCopyWith<_$NewPasswordModelImpl> get copyWith =>
      __$$NewPasswordModelImplCopyWithImpl<_$NewPasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _NewPasswordModel implements NewPasswordModel {
  const factory _NewPasswordModel({final bool? success, final String? code}) =
      _$NewPasswordModelImpl;

  factory _NewPasswordModel.fromJson(Map<String, dynamic> json) =
      _$NewPasswordModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get code;

  /// Create a copy of NewPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewPasswordModelImplCopyWith<_$NewPasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
