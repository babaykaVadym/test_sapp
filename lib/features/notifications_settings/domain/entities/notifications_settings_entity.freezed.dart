// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsSettingsEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsSettingsEntityCopyWith<NotificationsSettingsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingsEntityCopyWith<$Res> {
  factory $NotificationsSettingsEntityCopyWith(
          NotificationsSettingsEntity value,
          $Res Function(NotificationsSettingsEntity) then) =
      _$NotificationsSettingsEntityCopyWithImpl<$Res,
          NotificationsSettingsEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$NotificationsSettingsEntityCopyWithImpl<$Res,
        $Val extends NotificationsSettingsEntity>
    implements $NotificationsSettingsEntityCopyWith<$Res> {
  _$NotificationsSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsSettingsEntity
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
abstract class _$$NotificationsSettingsEntityImplCopyWith<$Res>
    implements $NotificationsSettingsEntityCopyWith<$Res> {
  factory _$$NotificationsSettingsEntityImplCopyWith(
          _$NotificationsSettingsEntityImpl value,
          $Res Function(_$NotificationsSettingsEntityImpl) then) =
      __$$NotificationsSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$NotificationsSettingsEntityImplCopyWithImpl<$Res>
    extends _$NotificationsSettingsEntityCopyWithImpl<$Res,
        _$NotificationsSettingsEntityImpl>
    implements _$$NotificationsSettingsEntityImplCopyWith<$Res> {
  __$$NotificationsSettingsEntityImplCopyWithImpl(
      _$NotificationsSettingsEntityImpl _value,
      $Res Function(_$NotificationsSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$NotificationsSettingsEntityImpl(
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

class _$NotificationsSettingsEntityImpl
    implements _NotificationsSettingsEntity {
  const _$NotificationsSettingsEntityImpl(
      {required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'NotificationsSettingsEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsSettingsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of NotificationsSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsSettingsEntityImplCopyWith<_$NotificationsSettingsEntityImpl>
      get copyWith => __$$NotificationsSettingsEntityImplCopyWithImpl<
          _$NotificationsSettingsEntityImpl>(this, _$identity);
}

abstract class _NotificationsSettingsEntity
    implements NotificationsSettingsEntity {
  const factory _NotificationsSettingsEntity(
      {required final String id,
      required final String name}) = _$NotificationsSettingsEntityImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of NotificationsSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsSettingsEntityImplCopyWith<_$NotificationsSettingsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
