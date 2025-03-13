// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireState {
  bool get progressOn => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)
        questions,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        complete,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Qquestions value) questions,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Qquestions value)? questions,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Qquestions value)? questions,
    TResult Function(_Complete value)? complete,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call({bool progressOn, Object? error, List<Question> questions});
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QquestionsImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$QquestionsImplCopyWith(
          _$QquestionsImpl value, $Res Function(_$QquestionsImpl) then) =
      __$$QquestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      String? sessionId,
      List<Question> questions});
}

/// @nodoc
class __$$QquestionsImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$QquestionsImpl>
    implements _$$QquestionsImplCopyWith<$Res> {
  __$$QquestionsImplCopyWithImpl(
      _$QquestionsImpl _value, $Res Function(_$QquestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? sessionId = freezed,
    Object? questions = null,
  }) {
    return _then(_$QquestionsImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$QquestionsImpl implements _Qquestions {
  const _$QquestionsImpl(
      {this.progressOn = false,
      this.error,
      this.sessionId,
      final List<Question> questions = const []})
      : _questions = questions;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  @override
  final String? sessionId;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionnaireState.questions(progressOn: $progressOn, error: $error, sessionId: $sessionId, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QquestionsImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      sessionId,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QquestionsImplCopyWith<_$QquestionsImpl> get copyWith =>
      __$$QquestionsImplCopyWithImpl<_$QquestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)
        questions,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        complete,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        init,
  }) {
    return questions(progressOn, error, sessionId, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        init,
  }) {
    return questions?.call(progressOn, error, sessionId, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        init,
    required TResult orElse(),
  }) {
    if (questions != null) {
      return questions(progressOn, error, sessionId, this.questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Qquestions value) questions,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Init value) init,
  }) {
    return questions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Qquestions value)? questions,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Init value)? init,
  }) {
    return questions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Qquestions value)? questions,
    TResult Function(_Complete value)? complete,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (questions != null) {
      return questions(this);
    }
    return orElse();
  }
}

abstract class _Qquestions implements QuestionnaireState {
  const factory _Qquestions(
      {final bool progressOn,
      final Object? error,
      final String? sessionId,
      final List<Question> questions}) = _$QquestionsImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  String? get sessionId;
  @override
  List<Question> get questions;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QquestionsImplCopyWith<_$QquestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$CompleteImplCopyWith(
          _$CompleteImpl value, $Res Function(_$CompleteImpl) then) =
      __$$CompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool progressOn, Object? error, List<Question> questions});
}

/// @nodoc
class __$$CompleteImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$CompleteImpl>
    implements _$$CompleteImplCopyWith<$Res> {
  __$$CompleteImplCopyWithImpl(
      _$CompleteImpl _value, $Res Function(_$CompleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? questions = null,
  }) {
    return _then(_$CompleteImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$CompleteImpl implements _Complete {
  const _$CompleteImpl(
      {this.progressOn = false,
      this.error,
      final List<Question> questions = const []})
      : _questions = questions;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionnaireState.complete(progressOn: $progressOn, error: $error, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      __$$CompleteImplCopyWithImpl<_$CompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)
        questions,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        complete,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        init,
  }) {
    return complete(progressOn, error, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        init,
  }) {
    return complete?.call(progressOn, error, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        init,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(progressOn, error, this.questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Qquestions value) questions,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Init value) init,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Qquestions value)? questions,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Init value)? init,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Qquestions value)? questions,
    TResult Function(_Complete value)? complete,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements QuestionnaireState {
  const factory _Complete(
      {final bool progressOn,
      final Object? error,
      final List<Question> questions}) = _$CompleteImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  @override
  List<Question> get questions;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool progressOn, Object? error, List<Question> questions});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? questions = null,
  }) {
    return _then(_$InitImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(
      {this.progressOn = false,
      this.error,
      final List<Question> questions = const []})
      : _questions = questions;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionnaireState.init(progressOn: $progressOn, error: $error, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)
        questions,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        complete,
    required TResult Function(
            bool progressOn, Object? error, List<Question> questions)
        init,
  }) {
    return init(progressOn, error, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult? Function(bool progressOn, Object? error, List<Question> questions)?
        init,
  }) {
    return init?.call(progressOn, error, this.questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, String? sessionId,
            List<Question> questions)?
        questions,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        complete,
    TResult Function(bool progressOn, Object? error, List<Question> questions)?
        init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(progressOn, error, this.questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Qquestions value) questions,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Qquestions value)? questions,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Qquestions value)? questions,
    TResult Function(_Complete value)? complete,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements QuestionnaireState {
  const factory _Init(
      {final bool progressOn,
      final Object? error,
      final List<Question> questions}) = _$InitImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  @override
  List<Question> get questions;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
