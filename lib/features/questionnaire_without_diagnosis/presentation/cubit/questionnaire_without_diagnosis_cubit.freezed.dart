// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_without_diagnosis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireWithoutDiagnosisState {
  bool get progressOn => throw _privateConstructorUsedError;
  bool get showProcessing => throw _privateConstructorUsedError;
  bool get showResultPage => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  List<MentalStateModel> get mentalStates => throw _privateConstructorUsedError;
  List<InterpretationRuleModel> get interpretationRules =>
      throw _privateConstructorUsedError;
  List<QuestionnaireDiagnosisResultModel> get results =>
      throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool progressOn,
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)?
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

  /// Create a copy of QuestionnaireWithoutDiagnosisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireWithoutDiagnosisStateCopyWith<
          QuestionnaireWithoutDiagnosisState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireWithoutDiagnosisStateCopyWith<$Res> {
  factory $QuestionnaireWithoutDiagnosisStateCopyWith(
          QuestionnaireWithoutDiagnosisState value,
          $Res Function(QuestionnaireWithoutDiagnosisState) then) =
      _$QuestionnaireWithoutDiagnosisStateCopyWithImpl<$Res,
          QuestionnaireWithoutDiagnosisState>;
  @useResult
  $Res call(
      {bool progressOn,
      bool showProcessing,
      bool showResultPage,
      Object? error,
      List<QuestionModel> questions,
      List<MentalStateModel> mentalStates,
      List<InterpretationRuleModel> interpretationRules,
      List<QuestionnaireDiagnosisResultModel> results,
      int currentQuestionIndex});
}

/// @nodoc
class _$QuestionnaireWithoutDiagnosisStateCopyWithImpl<$Res,
        $Val extends QuestionnaireWithoutDiagnosisState>
    implements $QuestionnaireWithoutDiagnosisStateCopyWith<$Res> {
  _$QuestionnaireWithoutDiagnosisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireWithoutDiagnosisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? showProcessing = null,
    Object? showResultPage = null,
    Object? error = freezed,
    Object? questions = null,
    Object? mentalStates = null,
    Object? interpretationRules = null,
    Object? results = null,
    Object? currentQuestionIndex = null,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showResultPage: null == showResultPage
          ? _value.showResultPage
          : showResultPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      mentalStates: null == mentalStates
          ? _value.mentalStates
          : mentalStates // ignore: cast_nullable_to_non_nullable
              as List<MentalStateModel>,
      interpretationRules: null == interpretationRules
          ? _value.interpretationRules
          : interpretationRules // ignore: cast_nullable_to_non_nullable
              as List<InterpretationRuleModel>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireDiagnosisResultModel>,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuestionnaireWithoutDiagnosisStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      bool showProcessing,
      bool showResultPage,
      Object? error,
      List<QuestionModel> questions,
      List<MentalStateModel> mentalStates,
      List<InterpretationRuleModel> interpretationRules,
      List<QuestionnaireDiagnosisResultModel> results,
      int currentQuestionIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireWithoutDiagnosisStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireWithoutDiagnosisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? showProcessing = null,
    Object? showResultPage = null,
    Object? error = freezed,
    Object? questions = null,
    Object? mentalStates = null,
    Object? interpretationRules = null,
    Object? results = null,
    Object? currentQuestionIndex = null,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showResultPage: null == showResultPage
          ? _value.showResultPage
          : showResultPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      mentalStates: null == mentalStates
          ? _value._mentalStates
          : mentalStates // ignore: cast_nullable_to_non_nullable
              as List<MentalStateModel>,
      interpretationRules: null == interpretationRules
          ? _value._interpretationRules
          : interpretationRules // ignore: cast_nullable_to_non_nullable
              as List<InterpretationRuleModel>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireDiagnosisResultModel>,
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
      {this.progressOn = false,
      this.showProcessing = false,
      this.showResultPage = false,
      this.error,
      final List<QuestionModel> questions = const [],
      final List<MentalStateModel> mentalStates = const [],
      final List<InterpretationRuleModel> interpretationRules = const [],
      final List<QuestionnaireDiagnosisResultModel> results = const [],
      this.currentQuestionIndex = 0})
      : _questions = questions,
        _mentalStates = mentalStates,
        _interpretationRules = interpretationRules,
        _results = results;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  @JsonKey()
  final bool showProcessing;
  @override
  @JsonKey()
  final bool showResultPage;
  @override
  final Object? error;
  final List<QuestionModel> _questions;
  @override
  @JsonKey()
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<MentalStateModel> _mentalStates;
  @override
  @JsonKey()
  List<MentalStateModel> get mentalStates {
    if (_mentalStates is EqualUnmodifiableListView) return _mentalStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentalStates);
  }

  final List<InterpretationRuleModel> _interpretationRules;
  @override
  @JsonKey()
  List<InterpretationRuleModel> get interpretationRules {
    if (_interpretationRules is EqualUnmodifiableListView)
      return _interpretationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interpretationRules);
  }

  final List<QuestionnaireDiagnosisResultModel> _results;
  @override
  @JsonKey()
  List<QuestionnaireDiagnosisResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final int currentQuestionIndex;

  @override
  String toString() {
    return 'QuestionnaireWithoutDiagnosisState.initial(progressOn: $progressOn, showProcessing: $showProcessing, showResultPage: $showResultPage, error: $error, questions: $questions, mentalStates: $mentalStates, interpretationRules: $interpretationRules, results: $results, currentQuestionIndex: $currentQuestionIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            (identical(other.showProcessing, showProcessing) ||
                other.showProcessing == showProcessing) &&
            (identical(other.showResultPage, showResultPage) ||
                other.showResultPage == showResultPage) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._mentalStates, _mentalStates) &&
            const DeepCollectionEquality()
                .equals(other._interpretationRules, _interpretationRules) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      showProcessing,
      showResultPage,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_mentalStates),
      const DeepCollectionEquality().hash(_interpretationRules),
      const DeepCollectionEquality().hash(_results),
      currentQuestionIndex);

  /// Create a copy of QuestionnaireWithoutDiagnosisState
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
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)
        initial,
  }) {
    return initial(progressOn, showProcessing, showResultPage, error, questions,
        mentalStates, interpretationRules, results, currentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool progressOn,
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)?
        initial,
  }) {
    return initial?.call(
        progressOn,
        showProcessing,
        showResultPage,
        error,
        questions,
        mentalStates,
        interpretationRules,
        results,
        currentQuestionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool progressOn,
            bool showProcessing,
            bool showResultPage,
            Object? error,
            List<QuestionModel> questions,
            List<MentalStateModel> mentalStates,
            List<InterpretationRuleModel> interpretationRules,
            List<QuestionnaireDiagnosisResultModel> results,
            int currentQuestionIndex)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          progressOn,
          showProcessing,
          showResultPage,
          error,
          questions,
          mentalStates,
          interpretationRules,
          results,
          currentQuestionIndex);
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

abstract class _Initial implements QuestionnaireWithoutDiagnosisState {
  const factory _Initial(
      {final bool progressOn,
      final bool showProcessing,
      final bool showResultPage,
      final Object? error,
      final List<QuestionModel> questions,
      final List<MentalStateModel> mentalStates,
      final List<InterpretationRuleModel> interpretationRules,
      final List<QuestionnaireDiagnosisResultModel> results,
      final int currentQuestionIndex}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  bool get showProcessing;
  @override
  bool get showResultPage;
  @override
  Object? get error;
  @override
  List<QuestionModel> get questions;
  @override
  List<MentalStateModel> get mentalStates;
  @override
  List<InterpretationRuleModel> get interpretationRules;
  @override
  List<QuestionnaireDiagnosisResultModel> get results;
  @override
  int get currentQuestionIndex;

  /// Create a copy of QuestionnaireWithoutDiagnosisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
