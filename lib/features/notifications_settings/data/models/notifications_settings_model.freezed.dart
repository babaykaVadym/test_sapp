// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationsSettingsModel _$NotificationsSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationsSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationsSettingsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this NotificationsSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsSettingsModelCopyWith<NotificationsSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingsModelCopyWith<$Res> {
  factory $NotificationsSettingsModelCopyWith(NotificationsSettingsModel value,
          $Res Function(NotificationsSettingsModel) then) =
      _$NotificationsSettingsModelCopyWithImpl<$Res,
          NotificationsSettingsModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$NotificationsSettingsModelCopyWithImpl<$Res,
        $Val extends NotificationsSettingsModel>
    implements $NotificationsSettingsModelCopyWith<$Res> {
  _$NotificationsSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsSettingsModel
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
abstract class _$$NotificationsSettingsModelImplCopyWith<$Res>
    implements $NotificationsSettingsModelCopyWith<$Res> {
  factory _$$NotificationsSettingsModelImplCopyWith(
          _$NotificationsSettingsModelImpl value,
          $Res Function(_$NotificationsSettingsModelImpl) then) =
      __$$NotificationsSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$NotificationsSettingsModelImplCopyWithImpl<$Res>
    extends _$NotificationsSettingsModelCopyWithImpl<$Res,
        _$NotificationsSettingsModelImpl>
    implements _$$NotificationsSettingsModelImplCopyWith<$Res> {
  __$$NotificationsSettingsModelImplCopyWithImpl(
      _$NotificationsSettingsModelImpl _value,
      $Res Function(_$NotificationsSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$NotificationsSettingsModelImpl(
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
@JsonSerializable()
class _$NotificationsSettingsModelImpl implements _NotificationsSettingsModel {
  const _$NotificationsSettingsModelImpl(
      {required this.id, required this.name});

  factory _$NotificationsSettingsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationsSettingsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'NotificationsSettingsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsSettingsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of NotificationsSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsSettingsModelImplCopyWith<_$NotificationsSettingsModelImpl>
      get copyWith => __$$NotificationsSettingsModelImplCopyWithImpl<
          _$NotificationsSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationsSettingsModel
    implements NotificationsSettingsModel {
  const factory _NotificationsSettingsModel(
      {required final String id,
      required final String name}) = _$NotificationsSettingsModelImpl;

  factory _NotificationsSettingsModel.fromJson(Map<String, dynamic> json) =
      _$NotificationsSettingsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of NotificationsSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsSettingsModelImplCopyWith<_$NotificationsSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
