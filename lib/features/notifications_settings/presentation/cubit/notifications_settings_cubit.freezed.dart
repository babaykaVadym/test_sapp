// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsSettingsState {
  bool get progressOn => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool? get systemNotifications => throw _privateConstructorUsedError;
  bool? get reminder => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)?
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

  /// Create a copy of NotificationsSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsSettingsStateCopyWith<NotificationsSettingsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingsStateCopyWith<$Res> {
  factory $NotificationsSettingsStateCopyWith(NotificationsSettingsState value,
          $Res Function(NotificationsSettingsState) then) =
      _$NotificationsSettingsStateCopyWithImpl<$Res,
          NotificationsSettingsState>;
  @useResult
  $Res call(
      {bool progressOn,
      bool update,
      Object? error,
      bool? systemNotifications,
      bool? reminder});
}

/// @nodoc
class _$NotificationsSettingsStateCopyWithImpl<$Res,
        $Val extends NotificationsSettingsState>
    implements $NotificationsSettingsStateCopyWith<$Res> {
  _$NotificationsSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? update = null,
    Object? error = freezed,
    Object? systemNotifications = freezed,
    Object? reminder = freezed,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      systemNotifications: freezed == systemNotifications
          ? _value.systemNotifications
          : systemNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      reminder: freezed == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NotificationsSettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      bool update,
      Object? error,
      bool? systemNotifications,
      bool? reminder});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationsSettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? update = null,
    Object? error = freezed,
    Object? systemNotifications = freezed,
    Object? reminder = freezed,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      systemNotifications: freezed == systemNotifications
          ? _value.systemNotifications
          : systemNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      reminder: freezed == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = false,
      this.update = false,
      this.error,
      this.systemNotifications,
      this.reminder});

  @override
  @JsonKey()
  final bool progressOn;
  @override
  @JsonKey()
  final bool update;
  @override
  final Object? error;
  @override
  final bool? systemNotifications;
  @override
  final bool? reminder;

  @override
  String toString() {
    return 'NotificationsSettingsState.initial(progressOn: $progressOn, update: $update, error: $error, systemNotifications: $systemNotifications, reminder: $reminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            (identical(other.update, update) || other.update == update) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.systemNotifications, systemNotifications) ||
                other.systemNotifications == systemNotifications) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      update,
      const DeepCollectionEquality().hash(error),
      systemNotifications,
      reminder);

  /// Create a copy of NotificationsSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)
        initial,
  }) {
    return initial(progressOn, update, error, systemNotifications, reminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)?
        initial,
  }) {
    return initial?.call(
        progressOn, update, error, systemNotifications, reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, bool update, Object? error,
            bool? systemNotifications, bool? reminder)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(progressOn, update, error, systemNotifications, reminder);
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

abstract class _Initial implements NotificationsSettingsState {
  const factory _Initial(
      {final bool progressOn,
      final bool update,
      final Object? error,
      final bool? systemNotifications,
      final bool? reminder}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  bool get update;
  @override
  Object? get error;
  @override
  bool? get systemNotifications;
  @override
  bool? get reminder;

  /// Create a copy of NotificationsSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
