// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionPageState {
  bool get progressOn => throw _privateConstructorUsedError;
  bool get copmlete => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)?
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

  /// Create a copy of QuestionPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionPageStateCopyWith<QuestionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPageStateCopyWith<$Res> {
  factory $QuestionPageStateCopyWith(
          QuestionPageState value, $Res Function(QuestionPageState) then) =
      _$QuestionPageStateCopyWithImpl<$Res, QuestionPageState>;
  @useResult
  $Res call(
      {bool progressOn,
      bool copmlete,
      Object? error,
      List<Question> questions,
      int currentQuestionIndex});
}

/// @nodoc
class _$QuestionPageStateCopyWithImpl<$Res, $Val extends QuestionPageState>
    implements $QuestionPageStateCopyWith<$Res> {
  _$QuestionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? copmlete = null,
    Object? error = freezed,
    Object? questions = null,
    Object? currentQuestionIndex = null,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      copmlete: null == copmlete
          ? _value.copmlete
          : copmlete // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuestionPageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      bool copmlete,
      Object? error,
      List<Question> questions,
      int currentQuestionIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionPageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? copmlete = null,
    Object? error = freezed,
    Object? questions = null,
    Object? currentQuestionIndex = null,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      copmlete: null == copmlete
          ? _value.copmlete
          : copmlete // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = true,
      this.copmlete = false,
      this.error,
      final List<Question> questions = const [],
      this.currentQuestionIndex = 0})
      : _questions = questions;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  @JsonKey()
  final bool copmlete;
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
  @JsonKey()
  final int currentQuestionIndex;

  @override
  String toString() {
    return 'QuestionPageState.initial(progressOn: $progressOn, copmlete: $copmlete, error: $error, questions: $questions, currentQuestionIndex: $currentQuestionIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            (identical(other.copmlete, copmlete) ||
                other.copmlete == copmlete) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      copmlete,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_questions),
      currentQuestionIndex);

  /// Create a copy of QuestionPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)
        initial,
  }) {
    return initial(
        progressOn, copmlete, error, questions, currentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)?
        initial,
  }) {
    return initial?.call(
        progressOn, copmlete, error, questions, currentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, bool copmlete, Object? error,
            List<Question> questions, int currentQuestionIndex)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          progressOn, copmlete, error, questions, currentQuestionIndex);
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

abstract class _Initial implements QuestionPageState {
  const factory _Initial(
      {final bool progressOn,
      final bool copmlete,
      final Object? error,
      final List<Question> questions,
      final int currentQuestionIndex}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  bool get copmlete;
  @override
  Object? get error;
  @override
  List<Question> get questions;
  @override
  int get currentQuestionIndex;

  /// Create a copy of QuestionPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
