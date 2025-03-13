// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountSettingsEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of AccountSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSettingsEntityCopyWith<AccountSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsEntityCopyWith<$Res> {
  factory $AccountSettingsEntityCopyWith(AccountSettingsEntity value,
          $Res Function(AccountSettingsEntity) then) =
      _$AccountSettingsEntityCopyWithImpl<$Res, AccountSettingsEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$AccountSettingsEntityCopyWithImpl<$Res,
        $Val extends AccountSettingsEntity>
    implements $AccountSettingsEntityCopyWith<$Res> {
  _$AccountSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountSettingsEntityImplCopyWith<$Res>
    implements $AccountSettingsEntityCopyWith<$Res> {
  factory _$$AccountSettingsEntityImplCopyWith(
          _$AccountSettingsEntityImpl value,
          $Res Function(_$AccountSettingsEntityImpl) then) =
      __$$AccountSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$AccountSettingsEntityImplCopyWithImpl<$Res>
    extends _$AccountSettingsEntityCopyWithImpl<$Res,
        _$AccountSettingsEntityImpl>
    implements _$$AccountSettingsEntityImplCopyWith<$Res> {
  __$$AccountSettingsEntityImplCopyWithImpl(_$AccountSettingsEntityImpl _value,
      $Res Function(_$AccountSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AccountSettingsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountSettingsEntityImpl implements _AccountSettingsEntity {
  const _$AccountSettingsEntityImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AccountSettingsEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AccountSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsEntityImplCopyWith<_$AccountSettingsEntityImpl>
      get copyWith => __$$AccountSettingsEntityImplCopyWithImpl<
          _$AccountSettingsEntityImpl>(this, _$identity);
}

abstract class _AccountSettingsEntity implements AccountSettingsEntity {
  const factory _AccountSettingsEntity(
      {required final String id,
      required final String name}) = _$AccountSettingsEntityImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of AccountSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSettingsEntityImplCopyWith<_$AccountSettingsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
