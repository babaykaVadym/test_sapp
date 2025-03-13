// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideas_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdeasSettingsModel _$IdeasSettingsModelFromJson(Map<String, dynamic> json) {
  return _IdeasSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$IdeasSettingsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this IdeasSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdeasSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdeasSettingsModelCopyWith<IdeasSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdeasSettingsModelCopyWith<$Res> {
  factory $IdeasSettingsModelCopyWith(
          IdeasSettingsModel value, $Res Function(IdeasSettingsModel) then) =
      _$IdeasSettingsModelCopyWithImpl<$Res, IdeasSettingsModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$IdeasSettingsModelCopyWithImpl<$Res, $Val extends IdeasSettingsModel>
    implements $IdeasSettingsModelCopyWith<$Res> {
  _$IdeasSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdeasSettingsModel
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
abstract class _$$IdeasSettingsModelImplCopyWith<$Res>
    implements $IdeasSettingsModelCopyWith<$Res> {
  factory _$$IdeasSettingsModelImplCopyWith(_$IdeasSettingsModelImpl value,
          $Res Function(_$IdeasSettingsModelImpl) then) =
      __$$IdeasSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$IdeasSettingsModelImplCopyWithImpl<$Res>
    extends _$IdeasSettingsModelCopyWithImpl<$Res, _$IdeasSettingsModelImpl>
    implements _$$IdeasSettingsModelImplCopyWith<$Res> {
  __$$IdeasSettingsModelImplCopyWithImpl(_$IdeasSettingsModelImpl _value,
      $Res Function(_$IdeasSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdeasSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$IdeasSettingsModelImpl(
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
class _$IdeasSettingsModelImpl implements _IdeasSettingsModel {
  const _$IdeasSettingsModelImpl({required this.id, required this.name});

  factory _$IdeasSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdeasSettingsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'IdeasSettingsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdeasSettingsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of IdeasSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdeasSettingsModelImplCopyWith<_$IdeasSettingsModelImpl> get copyWith =>
      __$$IdeasSettingsModelImplCopyWithImpl<_$IdeasSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdeasSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _IdeasSettingsModel implements IdeasSettingsModel {
  const factory _IdeasSettingsModel(
      {required final String id,
      required final String name}) = _$IdeasSettingsModelImpl;

  factory _IdeasSettingsModel.fromJson(Map<String, dynamic> json) =
      _$IdeasSettingsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of IdeasSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdeasSettingsModelImplCopyWith<_$IdeasSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
