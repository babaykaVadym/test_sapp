// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_without_diagnosis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitialSurveyModel _$InitialSurveyModelFromJson(Map<String, dynamic> json) {
  return _InitialSurveyModel.fromJson(json);
}

/// @nodoc
mixin _$InitialSurveyModel {
  List<MentalStateModel>? get mentalStates =>
      throw _privateConstructorUsedError;
  List<QuestionModel>? get questions => throw _privateConstructorUsedError;
  List<InterpretationRuleModel>? get interpretationRules =>
      throw _privateConstructorUsedError;

  /// Serializes this InitialSurveyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitialSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitialSurveyModelCopyWith<InitialSurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialSurveyModelCopyWith<$Res> {
  factory $InitialSurveyModelCopyWith(
          InitialSurveyModel value, $Res Function(InitialSurveyModel) then) =
      _$InitialSurveyModelCopyWithImpl<$Res, InitialSurveyModel>;
  @useResult
  $Res call(
      {List<MentalStateModel>? mentalStates,
      List<QuestionModel>? questions,
      List<InterpretationRuleModel>? interpretationRules});
}

/// @nodoc
class _$InitialSurveyModelCopyWithImpl<$Res, $Val extends InitialSurveyModel>
    implements $InitialSurveyModelCopyWith<$Res> {
  _$InitialSurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentalStates = freezed,
    Object? questions = freezed,
    Object? interpretationRules = freezed,
  }) {
    return _then(_value.copyWith(
      mentalStates: freezed == mentalStates
          ? _value.mentalStates
          : mentalStates // ignore: cast_nullable_to_non_nullable
              as List<MentalStateModel>?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
      interpretationRules: freezed == interpretationRules
          ? _value.interpretationRules
          : interpretationRules // ignore: cast_nullable_to_non_nullable
              as List<InterpretationRuleModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialSurveyModelImplCopyWith<$Res>
    implements $InitialSurveyModelCopyWith<$Res> {
  factory _$$InitialSurveyModelImplCopyWith(_$InitialSurveyModelImpl value,
          $Res Function(_$InitialSurveyModelImpl) then) =
      __$$InitialSurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MentalStateModel>? mentalStates,
      List<QuestionModel>? questions,
      List<InterpretationRuleModel>? interpretationRules});
}

/// @nodoc
class __$$InitialSurveyModelImplCopyWithImpl<$Res>
    extends _$InitialSurveyModelCopyWithImpl<$Res, _$InitialSurveyModelImpl>
    implements _$$InitialSurveyModelImplCopyWith<$Res> {
  __$$InitialSurveyModelImplCopyWithImpl(_$InitialSurveyModelImpl _value,
      $Res Function(_$InitialSurveyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentalStates = freezed,
    Object? questions = freezed,
    Object? interpretationRules = freezed,
  }) {
    return _then(_$InitialSurveyModelImpl(
      mentalStates: freezed == mentalStates
          ? _value._mentalStates
          : mentalStates // ignore: cast_nullable_to_non_nullable
              as List<MentalStateModel>?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
      interpretationRules: freezed == interpretationRules
          ? _value._interpretationRules
          : interpretationRules // ignore: cast_nullable_to_non_nullable
              as List<InterpretationRuleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialSurveyModelImpl implements _InitialSurveyModel {
  const _$InitialSurveyModelImpl(
      {final List<MentalStateModel>? mentalStates,
      final List<QuestionModel>? questions,
      final List<InterpretationRuleModel>? interpretationRules})
      : _mentalStates = mentalStates,
        _questions = questions,
        _interpretationRules = interpretationRules;

  factory _$InitialSurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialSurveyModelImplFromJson(json);

  final List<MentalStateModel>? _mentalStates;
  @override
  List<MentalStateModel>? get mentalStates {
    final value = _mentalStates;
    if (value == null) return null;
    if (_mentalStates is EqualUnmodifiableListView) return _mentalStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QuestionModel>? _questions;
  @override
  List<QuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InterpretationRuleModel>? _interpretationRules;
  @override
  List<InterpretationRuleModel>? get interpretationRules {
    final value = _interpretationRules;
    if (value == null) return null;
    if (_interpretationRules is EqualUnmodifiableListView)
      return _interpretationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InitialSurveyModel(mentalStates: $mentalStates, questions: $questions, interpretationRules: $interpretationRules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialSurveyModelImpl &&
            const DeepCollectionEquality()
                .equals(other._mentalStates, _mentalStates) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._interpretationRules, _interpretationRules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mentalStates),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_interpretationRules));

  /// Create a copy of InitialSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialSurveyModelImplCopyWith<_$InitialSurveyModelImpl> get copyWith =>
      __$$InitialSurveyModelImplCopyWithImpl<_$InitialSurveyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialSurveyModelImplToJson(
      this,
    );
  }
}

abstract class _InitialSurveyModel implements InitialSurveyModel {
  const factory _InitialSurveyModel(
          {final List<MentalStateModel>? mentalStates,
          final List<QuestionModel>? questions,
          final List<InterpretationRuleModel>? interpretationRules}) =
      _$InitialSurveyModelImpl;

  factory _InitialSurveyModel.fromJson(Map<String, dynamic> json) =
      _$InitialSurveyModelImpl.fromJson;

  @override
  List<MentalStateModel>? get mentalStates;
  @override
  List<QuestionModel>? get questions;
  @override
  List<InterpretationRuleModel>? get interpretationRules;

  /// Create a copy of InitialSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialSurveyModelImplCopyWith<_$InitialSurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InterpretationRuleModel _$InterpretationRuleModelFromJson(
    Map<String, dynamic> json) {
  return _InterpretationRuleModel.fromJson(json);
}

/// @nodoc
mixin _$InterpretationRuleModel {
  String? get mentalStateSlug => throw _privateConstructorUsedError;
  int? get minScore => throw _privateConstructorUsedError;
  int? get maxScore => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this InterpretationRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterpretationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterpretationRuleModelCopyWith<InterpretationRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterpretationRuleModelCopyWith<$Res> {
  factory $InterpretationRuleModelCopyWith(InterpretationRuleModel value,
          $Res Function(InterpretationRuleModel) then) =
      _$InterpretationRuleModelCopyWithImpl<$Res, InterpretationRuleModel>;
  @useResult
  $Res call(
      {String? mentalStateSlug,
      int? minScore,
      int? maxScore,
      String? level,
      String? description});
}

/// @nodoc
class _$InterpretationRuleModelCopyWithImpl<$Res,
        $Val extends InterpretationRuleModel>
    implements $InterpretationRuleModelCopyWith<$Res> {
  _$InterpretationRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterpretationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentalStateSlug = freezed,
    Object? minScore = freezed,
    Object? maxScore = freezed,
    Object? level = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      mentalStateSlug: freezed == mentalStateSlug
          ? _value.mentalStateSlug
          : mentalStateSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      minScore: freezed == minScore
          ? _value.minScore
          : minScore // ignore: cast_nullable_to_non_nullable
              as int?,
      maxScore: freezed == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterpretationRuleModelImplCopyWith<$Res>
    implements $InterpretationRuleModelCopyWith<$Res> {
  factory _$$InterpretationRuleModelImplCopyWith(
          _$InterpretationRuleModelImpl value,
          $Res Function(_$InterpretationRuleModelImpl) then) =
      __$$InterpretationRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? mentalStateSlug,
      int? minScore,
      int? maxScore,
      String? level,
      String? description});
}

/// @nodoc
class __$$InterpretationRuleModelImplCopyWithImpl<$Res>
    extends _$InterpretationRuleModelCopyWithImpl<$Res,
        _$InterpretationRuleModelImpl>
    implements _$$InterpretationRuleModelImplCopyWith<$Res> {
  __$$InterpretationRuleModelImplCopyWithImpl(
      _$InterpretationRuleModelImpl _value,
      $Res Function(_$InterpretationRuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterpretationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentalStateSlug = freezed,
    Object? minScore = freezed,
    Object? maxScore = freezed,
    Object? level = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InterpretationRuleModelImpl(
      mentalStateSlug: freezed == mentalStateSlug
          ? _value.mentalStateSlug
          : mentalStateSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      minScore: freezed == minScore
          ? _value.minScore
          : minScore // ignore: cast_nullable_to_non_nullable
              as int?,
      maxScore: freezed == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterpretationRuleModelImpl implements _InterpretationRuleModel {
  const _$InterpretationRuleModelImpl(
      {this.mentalStateSlug,
      this.minScore,
      this.maxScore,
      this.level,
      this.description});

  factory _$InterpretationRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterpretationRuleModelImplFromJson(json);

  @override
  final String? mentalStateSlug;
  @override
  final int? minScore;
  @override
  final int? maxScore;
  @override
  final String? level;
  @override
  final String? description;

  @override
  String toString() {
    return 'InterpretationRuleModel(mentalStateSlug: $mentalStateSlug, minScore: $minScore, maxScore: $maxScore, level: $level, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterpretationRuleModelImpl &&
            (identical(other.mentalStateSlug, mentalStateSlug) ||
                other.mentalStateSlug == mentalStateSlug) &&
            (identical(other.minScore, minScore) ||
                other.minScore == minScore) &&
            (identical(other.maxScore, maxScore) ||
                other.maxScore == maxScore) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mentalStateSlug, minScore, maxScore, level, description);

  /// Create a copy of InterpretationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterpretationRuleModelImplCopyWith<_$InterpretationRuleModelImpl>
      get copyWith => __$$InterpretationRuleModelImplCopyWithImpl<
          _$InterpretationRuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterpretationRuleModelImplToJson(
      this,
    );
  }
}

abstract class _InterpretationRuleModel implements InterpretationRuleModel {
  const factory _InterpretationRuleModel(
      {final String? mentalStateSlug,
      final int? minScore,
      final int? maxScore,
      final String? level,
      final String? description}) = _$InterpretationRuleModelImpl;

  factory _InterpretationRuleModel.fromJson(Map<String, dynamic> json) =
      _$InterpretationRuleModelImpl.fromJson;

  @override
  String? get mentalStateSlug;
  @override
  int? get minScore;
  @override
  int? get maxScore;
  @override
  String? get level;
  @override
  String? get description;

  /// Create a copy of InterpretationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterpretationRuleModelImplCopyWith<_$InterpretationRuleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MentalStateModel _$MentalStateModelFromJson(Map<String, dynamic> json) {
  return _MentalStateModel.fromJson(json);
}

/// @nodoc
mixin _$MentalStateModel {
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this MentalStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentalStateModelCopyWith<MentalStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentalStateModelCopyWith<$Res> {
  factory $MentalStateModelCopyWith(
          MentalStateModel value, $Res Function(MentalStateModel) then) =
      _$MentalStateModelCopyWithImpl<$Res, MentalStateModel>;
  @useResult
  $Res call({String? title, String? slug, String? description});
}

/// @nodoc
class _$MentalStateModelCopyWithImpl<$Res, $Val extends MentalStateModel>
    implements $MentalStateModelCopyWith<$Res> {
  _$MentalStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentalStateModelImplCopyWith<$Res>
    implements $MentalStateModelCopyWith<$Res> {
  factory _$$MentalStateModelImplCopyWith(_$MentalStateModelImpl value,
          $Res Function(_$MentalStateModelImpl) then) =
      __$$MentalStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? slug, String? description});
}

/// @nodoc
class __$$MentalStateModelImplCopyWithImpl<$Res>
    extends _$MentalStateModelCopyWithImpl<$Res, _$MentalStateModelImpl>
    implements _$$MentalStateModelImplCopyWith<$Res> {
  __$$MentalStateModelImplCopyWithImpl(_$MentalStateModelImpl _value,
      $Res Function(_$MentalStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
  }) {
    return _then(_$MentalStateModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentalStateModelImpl implements _MentalStateModel {
  const _$MentalStateModelImpl({this.title, this.slug, this.description});

  factory _$MentalStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentalStateModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? description;

  @override
  String toString() {
    return 'MentalStateModel(title: $title, slug: $slug, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentalStateModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, slug, description);

  /// Create a copy of MentalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentalStateModelImplCopyWith<_$MentalStateModelImpl> get copyWith =>
      __$$MentalStateModelImplCopyWithImpl<_$MentalStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentalStateModelImplToJson(
      this,
    );
  }
}

abstract class _MentalStateModel implements MentalStateModel {
  const factory _MentalStateModel(
      {final String? title,
      final String? slug,
      final String? description}) = _$MentalStateModelImpl;

  factory _MentalStateModel.fromJson(Map<String, dynamic> json) =
      _$MentalStateModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get description;

  /// Create a copy of MentalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentalStateModelImplCopyWith<_$MentalStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String? get slug => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get mentalStateSlug => throw _privateConstructorUsedError;
  int? get valueAnswerButton => throw _privateConstructorUsedError;
  int? get scaleMin => throw _privateConstructorUsedError;
  int? get scaleMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  ImageForScreenModel? get image => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {String? slug,
      String? content,
      String? mentalStateSlug,
      int? valueAnswerButton,
      int? scaleMin,
      int? scaleMax,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      ImageForScreenModel? image});

  $ImageForScreenModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? content = freezed,
    Object? mentalStateSlug = freezed,
    Object? valueAnswerButton = freezed,
    Object? scaleMin = freezed,
    Object? scaleMax = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      mentalStateSlug: freezed == mentalStateSlug
          ? _value.mentalStateSlug
          : mentalStateSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      valueAnswerButton: freezed == valueAnswerButton
          ? _value.valueAnswerButton
          : valueAnswerButton // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleMin: freezed == scaleMin
          ? _value.scaleMin
          : scaleMin // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleMax: freezed == scaleMax
          ? _value.scaleMax
          : scaleMax // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageForScreenModel?,
    ) as $Val);
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageForScreenModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageForScreenModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug,
      String? content,
      String? mentalStateSlug,
      int? valueAnswerButton,
      int? scaleMin,
      int? scaleMax,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      ImageForScreenModel? image});

  @override
  $ImageForScreenModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? content = freezed,
    Object? mentalStateSlug = freezed,
    Object? valueAnswerButton = freezed,
    Object? scaleMin = freezed,
    Object? scaleMax = freezed,
    Object? image = freezed,
  }) {
    return _then(_$QuestionModelImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      mentalStateSlug: freezed == mentalStateSlug
          ? _value.mentalStateSlug
          : mentalStateSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      valueAnswerButton: freezed == valueAnswerButton
          ? _value.valueAnswerButton
          : valueAnswerButton // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleMin: freezed == scaleMin
          ? _value.scaleMin
          : scaleMin // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleMax: freezed == scaleMax
          ? _value.scaleMax
          : scaleMax // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageForScreenModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  const _$QuestionModelImpl(
      {this.slug,
      this.content,
      this.mentalStateSlug,
      this.valueAnswerButton,
      this.scaleMin,
      this.scaleMax,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      this.image});

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? content;
  @override
  final String? mentalStateSlug;
  @override
  final int? valueAnswerButton;
  @override
  final int? scaleMin;
  @override
  final int? scaleMax;
  @override
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  final ImageForScreenModel? image;

  @override
  String toString() {
    return 'QuestionModel(slug: $slug, content: $content, mentalStateSlug: $mentalStateSlug, valueAnswerButton: $valueAnswerButton, scaleMin: $scaleMin, scaleMax: $scaleMax, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.mentalStateSlug, mentalStateSlug) ||
                other.mentalStateSlug == mentalStateSlug) &&
            (identical(other.valueAnswerButton, valueAnswerButton) ||
                other.valueAnswerButton == valueAnswerButton) &&
            (identical(other.scaleMin, scaleMin) ||
                other.scaleMin == scaleMin) &&
            (identical(other.scaleMax, scaleMax) ||
                other.scaleMax == scaleMax) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slug, content, mentalStateSlug,
      valueAnswerButton, scaleMin, scaleMax, image);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {final String? slug,
      final String? content,
      final String? mentalStateSlug,
      final int? valueAnswerButton,
      final int? scaleMin,
      final int? scaleMax,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      final ImageForScreenModel? image}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get content;
  @override
  String? get mentalStateSlug;
  @override
  int? get valueAnswerButton;
  @override
  int? get scaleMin;
  @override
  int? get scaleMax;
  @override
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  ImageForScreenModel? get image;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireDiagnosisResultModel _$QuestionnaireDiagnosisResultModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireDiagnosisResultModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireDiagnosisResultModel {
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get rulsDescription => throw _privateConstructorUsedError;
  String? get mentalDescription => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  int get maxValue => throw _privateConstructorUsedError;
  int get minValue => throw _privateConstructorUsedError;
  int get chosenValue => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireDiagnosisResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireDiagnosisResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireDiagnosisResultModelCopyWith<QuestionnaireDiagnosisResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireDiagnosisResultModelCopyWith<$Res> {
  factory $QuestionnaireDiagnosisResultModelCopyWith(
          QuestionnaireDiagnosisResultModel value,
          $Res Function(QuestionnaireDiagnosisResultModel) then) =
      _$QuestionnaireDiagnosisResultModelCopyWithImpl<$Res,
          QuestionnaireDiagnosisResultModel>;
  @useResult
  $Res call(
      {String? title,
      String? slug,
      String? rulsDescription,
      String? mentalDescription,
      String? level,
      int maxValue,
      int minValue,
      int chosenValue});
}

/// @nodoc
class _$QuestionnaireDiagnosisResultModelCopyWithImpl<$Res,
        $Val extends QuestionnaireDiagnosisResultModel>
    implements $QuestionnaireDiagnosisResultModelCopyWith<$Res> {
  _$QuestionnaireDiagnosisResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireDiagnosisResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? rulsDescription = freezed,
    Object? mentalDescription = freezed,
    Object? level = freezed,
    Object? maxValue = null,
    Object? minValue = null,
    Object? chosenValue = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      rulsDescription: freezed == rulsDescription
          ? _value.rulsDescription
          : rulsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mentalDescription: freezed == mentalDescription
          ? _value.mentalDescription
          : mentalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      chosenValue: null == chosenValue
          ? _value.chosenValue
          : chosenValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireDiagnosisResultModelImplCopyWith<$Res>
    implements $QuestionnaireDiagnosisResultModelCopyWith<$Res> {
  factory _$$QuestionnaireDiagnosisResultModelImplCopyWith(
          _$QuestionnaireDiagnosisResultModelImpl value,
          $Res Function(_$QuestionnaireDiagnosisResultModelImpl) then) =
      __$$QuestionnaireDiagnosisResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? slug,
      String? rulsDescription,
      String? mentalDescription,
      String? level,
      int maxValue,
      int minValue,
      int chosenValue});
}

/// @nodoc
class __$$QuestionnaireDiagnosisResultModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireDiagnosisResultModelCopyWithImpl<$Res,
        _$QuestionnaireDiagnosisResultModelImpl>
    implements _$$QuestionnaireDiagnosisResultModelImplCopyWith<$Res> {
  __$$QuestionnaireDiagnosisResultModelImplCopyWithImpl(
      _$QuestionnaireDiagnosisResultModelImpl _value,
      $Res Function(_$QuestionnaireDiagnosisResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireDiagnosisResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? rulsDescription = freezed,
    Object? mentalDescription = freezed,
    Object? level = freezed,
    Object? maxValue = null,
    Object? minValue = null,
    Object? chosenValue = null,
  }) {
    return _then(_$QuestionnaireDiagnosisResultModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      rulsDescription: freezed == rulsDescription
          ? _value.rulsDescription
          : rulsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mentalDescription: freezed == mentalDescription
          ? _value.mentalDescription
          : mentalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      chosenValue: null == chosenValue
          ? _value.chosenValue
          : chosenValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireDiagnosisResultModelImpl
    implements _QuestionnaireDiagnosisResultModel {
  const _$QuestionnaireDiagnosisResultModelImpl(
      {this.title,
      this.slug,
      this.rulsDescription,
      this.mentalDescription,
      this.level,
      this.maxValue = 0,
      this.minValue = 0,
      this.chosenValue = 0});

  factory _$QuestionnaireDiagnosisResultModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionnaireDiagnosisResultModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? rulsDescription;
  @override
  final String? mentalDescription;
  @override
  final String? level;
  @override
  @JsonKey()
  final int maxValue;
  @override
  @JsonKey()
  final int minValue;
  @override
  @JsonKey()
  final int chosenValue;

  @override
  String toString() {
    return 'QuestionnaireDiagnosisResultModel(title: $title, slug: $slug, rulsDescription: $rulsDescription, mentalDescription: $mentalDescription, level: $level, maxValue: $maxValue, minValue: $minValue, chosenValue: $chosenValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireDiagnosisResultModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.rulsDescription, rulsDescription) ||
                other.rulsDescription == rulsDescription) &&
            (identical(other.mentalDescription, mentalDescription) ||
                other.mentalDescription == mentalDescription) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.chosenValue, chosenValue) ||
                other.chosenValue == chosenValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, slug, rulsDescription,
      mentalDescription, level, maxValue, minValue, chosenValue);

  /// Create a copy of QuestionnaireDiagnosisResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireDiagnosisResultModelImplCopyWith<
          _$QuestionnaireDiagnosisResultModelImpl>
      get copyWith => __$$QuestionnaireDiagnosisResultModelImplCopyWithImpl<
          _$QuestionnaireDiagnosisResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireDiagnosisResultModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireDiagnosisResultModel
    implements QuestionnaireDiagnosisResultModel {
  const factory _QuestionnaireDiagnosisResultModel(
      {final String? title,
      final String? slug,
      final String? rulsDescription,
      final String? mentalDescription,
      final String? level,
      final int maxValue,
      final int minValue,
      final int chosenValue}) = _$QuestionnaireDiagnosisResultModelImpl;

  factory _QuestionnaireDiagnosisResultModel.fromJson(
          Map<String, dynamic> json) =
      _$QuestionnaireDiagnosisResultModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get rulsDescription;
  @override
  String? get mentalDescription;
  @override
  String? get level;
  @override
  int get maxValue;
  @override
  int get minValue;
  @override
  int get chosenValue;

  /// Create a copy of QuestionnaireDiagnosisResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireDiagnosisResultModelImplCopyWith<
          _$QuestionnaireDiagnosisResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
