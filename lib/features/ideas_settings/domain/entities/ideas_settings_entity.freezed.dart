// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideas_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdeasSettingsEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of IdeasSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdeasSettingsEntityCopyWith<IdeasSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdeasSettingsEntityCopyWith<$Res> {
  factory $IdeasSettingsEntityCopyWith(
          IdeasSettingsEntity value, $Res Function(IdeasSettingsEntity) then) =
      _$IdeasSettingsEntityCopyWithImpl<$Res, IdeasSettingsEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$IdeasSettingsEntityCopyWithImpl<$Res, $Val extends IdeasSettingsEntity>
    implements $IdeasSettingsEntityCopyWith<$Res> {
  _$IdeasSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdeasSettingsEntity
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
abstract class _$$IdeasSettingsEntityImplCopyWith<$Res>
    implements $IdeasSettingsEntityCopyWith<$Res> {
  factory _$$IdeasSettingsEntityImplCopyWith(_$IdeasSettingsEntityImpl value,
          $Res Function(_$IdeasSettingsEntityImpl) then) =
      __$$IdeasSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$IdeasSettingsEntityImplCopyWithImpl<$Res>
    extends _$IdeasSettingsEntityCopyWithImpl<$Res, _$IdeasSettingsEntityImpl>
    implements _$$IdeasSettingsEntityImplCopyWith<$Res> {
  __$$IdeasSettingsEntityImplCopyWithImpl(_$IdeasSettingsEntityImpl _value,
      $Res Function(_$IdeasSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdeasSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$IdeasSettingsEntityImpl(
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

class _$IdeasSettingsEntityImpl implements _IdeasSettingsEntity {
  const _$IdeasSettingsEntityImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'IdeasSettingsEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdeasSettingsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of IdeasSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdeasSettingsEntityImplCopyWith<_$IdeasSettingsEntityImpl> get copyWith =>
      __$$IdeasSettingsEntityImplCopyWithImpl<_$IdeasSettingsEntityImpl>(
          this, _$identity);
}

abstract class _IdeasSettingsEntity implements IdeasSettingsEntity {
  const factory _IdeasSettingsEntity(
      {required final String id,
      required final String name}) = _$IdeasSettingsEntityImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of IdeasSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdeasSettingsEntityImplCopyWith<_$IdeasSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
