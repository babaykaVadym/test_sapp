// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_policy_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HtmlParsModel _$HtmlParsModelFromJson(Map<String, dynamic> json) {
  return _HtmlParsModel.fromJson(json);
}

/// @nodoc
mixin _$HtmlParsModel {
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<dynamic> get pathValue => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  /// Serializes this HtmlParsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HtmlParsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HtmlParsModelCopyWith<HtmlParsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HtmlParsModelCopyWith<$Res> {
  factory $HtmlParsModelCopyWith(
          HtmlParsModel value, $Res Function(HtmlParsModel) then) =
      _$HtmlParsModelCopyWithImpl<$Res, HtmlParsModel>;
  @useResult
  $Res call(
      {String? title, String? name, List<dynamic> pathValue, bool isExpanded});
}

/// @nodoc
class _$HtmlParsModelCopyWithImpl<$Res, $Val extends HtmlParsModel>
    implements $HtmlParsModelCopyWith<$Res> {
  _$HtmlParsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HtmlParsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? pathValue = null,
    Object? isExpanded = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pathValue: null == pathValue
          ? _value.pathValue
          : pathValue // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HtmlParsModelImplCopyWith<$Res>
    implements $HtmlParsModelCopyWith<$Res> {
  factory _$$HtmlParsModelImplCopyWith(
          _$HtmlParsModelImpl value, $Res Function(_$HtmlParsModelImpl) then) =
      __$$HtmlParsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? name, List<dynamic> pathValue, bool isExpanded});
}

/// @nodoc
class __$$HtmlParsModelImplCopyWithImpl<$Res>
    extends _$HtmlParsModelCopyWithImpl<$Res, _$HtmlParsModelImpl>
    implements _$$HtmlParsModelImplCopyWith<$Res> {
  __$$HtmlParsModelImplCopyWithImpl(
      _$HtmlParsModelImpl _value, $Res Function(_$HtmlParsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HtmlParsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? pathValue = null,
    Object? isExpanded = null,
  }) {
    return _then(_$HtmlParsModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pathValue: null == pathValue
          ? _value._pathValue
          : pathValue // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HtmlParsModelImpl implements _HtmlParsModel {
  const _$HtmlParsModelImpl(
      {this.title,
      this.name,
      final List<dynamic> pathValue = const [],
      this.isExpanded = false})
      : _pathValue = pathValue;

  factory _$HtmlParsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HtmlParsModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? name;
  final List<dynamic> _pathValue;
  @override
  @JsonKey()
  List<dynamic> get pathValue {
    if (_pathValue is EqualUnmodifiableListView) return _pathValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pathValue);
  }

  @override
  @JsonKey()
  final bool isExpanded;

  @override
  String toString() {
    return 'HtmlParsModel(title: $title, name: $name, pathValue: $pathValue, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HtmlParsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._pathValue, _pathValue) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, name,
      const DeepCollectionEquality().hash(_pathValue), isExpanded);

  /// Create a copy of HtmlParsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HtmlParsModelImplCopyWith<_$HtmlParsModelImpl> get copyWith =>
      __$$HtmlParsModelImplCopyWithImpl<_$HtmlParsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HtmlParsModelImplToJson(
      this,
    );
  }
}

abstract class _HtmlParsModel implements HtmlParsModel {
  const factory _HtmlParsModel(
      {final String? title,
      final String? name,
      final List<dynamic> pathValue,
      final bool isExpanded}) = _$HtmlParsModelImpl;

  factory _HtmlParsModel.fromJson(Map<String, dynamic> json) =
      _$HtmlParsModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get name;
  @override
  List<dynamic> get pathValue;
  @override
  bool get isExpanded;

  /// Create a copy of HtmlParsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HtmlParsModelImplCopyWith<_$HtmlParsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
