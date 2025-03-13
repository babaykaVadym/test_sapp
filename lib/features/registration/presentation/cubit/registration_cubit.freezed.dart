// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationState {
  bool get progressOn => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get inviteLink => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  String? get confirmPasswordError => throw _privateConstructorUsedError;
  String? get inviteLinkError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool progressOn,
            Object? error,
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            Object? error,
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            Object? error,
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)?
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

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      String email,
      String password,
      String confirmPassword,
      String inviteLink,
      String? emailError,
      String? passwordError,
      String? confirmPasswordError,
      String? inviteLinkError});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? inviteLink = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? inviteLinkError = freezed,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLinkError: freezed == inviteLinkError
          ? _value.inviteLinkError
          : inviteLinkError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      String email,
      String password,
      String confirmPassword,
      String inviteLink,
      String? emailError,
      String? passwordError,
      String? confirmPasswordError,
      String? inviteLinkError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? inviteLink = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? inviteLinkError = freezed,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLinkError: freezed == inviteLinkError
          ? _value.inviteLinkError
          : inviteLinkError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = false,
      this.error,
      this.email = "",
      this.password = "",
      this.confirmPassword = "",
      this.inviteLink = "",
      this.emailError,
      this.passwordError,
      this.confirmPasswordError,
      this.inviteLinkError});

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String inviteLink;
  @override
  final String? emailError;
  @override
  final String? passwordError;
  @override
  final String? confirmPasswordError;
  @override
  final String? inviteLinkError;

  @override
  String toString() {
    return 'RegistrationState.initial(progressOn: $progressOn, error: $error, email: $email, password: $password, confirmPassword: $confirmPassword, inviteLink: $inviteLink, emailError: $emailError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, inviteLinkError: $inviteLinkError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.inviteLink, inviteLink) ||
                other.inviteLink == inviteLink) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                other.confirmPasswordError == confirmPasswordError) &&
            (identical(other.inviteLinkError, inviteLinkError) ||
                other.inviteLinkError == inviteLinkError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      email,
      password,
      confirmPassword,
      inviteLink,
      emailError,
      passwordError,
      confirmPasswordError,
      inviteLinkError);

  /// Create a copy of RegistrationState
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
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)
        initial,
  }) {
    return initial(
        progressOn,
        error,
        email,
        password,
        confirmPassword,
        inviteLink,
        emailError,
        passwordError,
        confirmPasswordError,
        inviteLinkError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            Object? error,
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)?
        initial,
  }) {
    return initial?.call(
        progressOn,
        error,
        email,
        password,
        confirmPassword,
        inviteLink,
        emailError,
        passwordError,
        confirmPasswordError,
        inviteLinkError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            Object? error,
            String email,
            String password,
            String confirmPassword,
            String inviteLink,
            String? emailError,
            String? passwordError,
            String? confirmPasswordError,
            String? inviteLinkError)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          progressOn,
          error,
          email,
          password,
          confirmPassword,
          inviteLink,
          emailError,
          passwordError,
          confirmPasswordError,
          inviteLinkError);
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

abstract class _Initial implements RegistrationState {
  const factory _Initial(
      {final bool progressOn,
      final Object? error,
      final String email,
      final String password,
      final String confirmPassword,
      final String inviteLink,
      final String? emailError,
      final String? passwordError,
      final String? confirmPasswordError,
      final String? inviteLinkError}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get inviteLink;
  @override
  String? get emailError;
  @override
  String? get passwordError;
  @override
  String? get confirmPasswordError;
  @override
  String? get inviteLinkError;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
