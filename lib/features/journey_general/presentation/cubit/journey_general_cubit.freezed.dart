// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journey_general_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JourneyGeneralState {
  bool get progressOn => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  List<CheckPointModel> get checkPoints => throw _privateConstructorUsedError;
  List<JourneyActiveTaskModel> get activeTaskList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of JourneyGeneralState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyGeneralStateCopyWith<JourneyGeneralState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyGeneralStateCopyWith<$Res> {
  factory $JourneyGeneralStateCopyWith(
          JourneyGeneralState value, $Res Function(JourneyGeneralState) then) =
      _$JourneyGeneralStateCopyWithImpl<$Res, JourneyGeneralState>;
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      List<CheckPointModel> checkPoints,
      List<JourneyActiveTaskModel> activeTaskList});
}

/// @nodoc
class _$JourneyGeneralStateCopyWithImpl<$Res, $Val extends JourneyGeneralState>
    implements $JourneyGeneralStateCopyWith<$Res> {
  _$JourneyGeneralStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyGeneralState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? checkPoints = null,
    Object? activeTaskList = null,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      checkPoints: null == checkPoints
          ? _value.checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPointModel>,
      activeTaskList: null == activeTaskList
          ? _value.activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<JourneyActiveTaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $JourneyGeneralStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      List<CheckPointModel> checkPoints,
      List<JourneyActiveTaskModel> activeTaskList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$JourneyGeneralStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyGeneralState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? checkPoints = null,
    Object? activeTaskList = null,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      checkPoints: null == checkPoints
          ? _value._checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPointModel>,
      activeTaskList: null == activeTaskList
          ? _value._activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<JourneyActiveTaskModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = false,
      this.error,
      final List<CheckPointModel> checkPoints = const [],
      final List<JourneyActiveTaskModel> activeTaskList = const []})
      : _checkPoints = checkPoints,
        _activeTaskList = activeTaskList;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  final List<CheckPointModel> _checkPoints;
  @override
  @JsonKey()
  List<CheckPointModel> get checkPoints {
    if (_checkPoints is EqualUnmodifiableListView) return _checkPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkPoints);
  }

  final List<JourneyActiveTaskModel> _activeTaskList;
  @override
  @JsonKey()
  List<JourneyActiveTaskModel> get activeTaskList {
    if (_activeTaskList is EqualUnmodifiableListView) return _activeTaskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeTaskList);
  }

  @override
  String toString() {
    return 'JourneyGeneralState.initial(progressOn: $progressOn, error: $error, checkPoints: $checkPoints, activeTaskList: $activeTaskList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._checkPoints, _checkPoints) &&
            const DeepCollectionEquality()
                .equals(other._activeTaskList, _activeTaskList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_checkPoints),
      const DeepCollectionEquality().hash(_activeTaskList));

  /// Create a copy of JourneyGeneralState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)
        initial,
  }) {
    return initial(progressOn, error, checkPoints, activeTaskList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)?
        initial,
  }) {
    return initial?.call(progressOn, error, checkPoints, activeTaskList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            Object? error,
            List<CheckPointModel> checkPoints,
            List<JourneyActiveTaskModel> activeTaskList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(progressOn, error, checkPoints, activeTaskList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JourneyGeneralState {
  const factory _Initial(
      {final bool progressOn,
      final Object? error,
      final List<CheckPointModel> checkPoints,
      final List<JourneyActiveTaskModel> activeTaskList}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  @override
  List<CheckPointModel> get checkPoints;
  @override
  List<JourneyActiveTaskModel> get activeTaskList;

  /// Create a copy of JourneyGeneralState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
