// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashState {
  bool get progressOn => throw _privateConstructorUsedError;
  bool get goToLogin => throw _privateConstructorUsedError;
  bool get goToHome => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool progressOn, bool goToLogin, bool goToHome, Object? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn, bool goToLogin, bool goToHome, Object? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn, bool goToLogin, bool goToHome, Object? error)?
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

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({bool progressOn, bool goToLogin, bool goToHome, Object? error});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? goToLogin = null,
    Object? goToHome = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      goToLogin: null == goToLogin
          ? _value.goToLogin
          : goToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      goToHome: null == goToHome
          ? _value.goToHome
          : goToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool progressOn, bool goToLogin, bool goToHome, Object? error});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? goToLogin = null,
    Object? goToHome = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      goToLogin: null == goToLogin
          ? _value.goToLogin
          : goToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      goToHome: null == goToHome
          ? _value.goToHome
          : goToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = false,
      this.goToLogin = false,
      this.goToHome = false,
      this.error});

  @override
  @JsonKey()
  final bool progressOn;
  @override
  @JsonKey()
  final bool goToLogin;
  @override
  @JsonKey()
  final bool goToHome;
  @override
  final Object? error;

  @override
  String toString() {
    return 'SplashState.initial(progressOn: $progressOn, goToLogin: $goToLogin, goToHome: $goToHome, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            (identical(other.goToLogin, goToLogin) ||
                other.goToLogin == goToLogin) &&
            (identical(other.goToHome, goToHome) ||
                other.goToHome == goToHome) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progressOn, goToLogin, goToHome,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of SplashState
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
            bool progressOn, bool goToLogin, bool goToHome, Object? error)
        initial,
  }) {
    return initial(progressOn, goToLogin, goToHome, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn, bool goToLogin, bool goToHome, Object? error)?
        initial,
  }) {
    return initial?.call(progressOn, goToLogin, goToHome, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn, bool goToLogin, bool goToHome, Object? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(progressOn, goToLogin, goToHome, error);
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

abstract class _Initial implements SplashState {
  const factory _Initial(
      {final bool progressOn,
      final bool goToLogin,
      final bool goToHome,
      final Object? error}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  bool get goToLogin;
  @override
  bool get goToHome;
  @override
  Object? get error;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
