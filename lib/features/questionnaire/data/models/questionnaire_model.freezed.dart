// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompleteModel _$CompleteModelFromJson(Map<String, dynamic> json) {
  return _CompleteModel.fromJson(json);
}

/// @nodoc
mixin _$CompleteModel {
  String? get id => throw _privateConstructorUsedError;
  String? get surveyId => throw _privateConstructorUsedError;
  List<QuestionModel>? get answers => throw _privateConstructorUsedError;
  String? get mentalStateSnapshotIds => throw _privateConstructorUsedError;

  /// Serializes this CompleteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteModelCopyWith<CompleteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteModelCopyWith<$Res> {
  factory $CompleteModelCopyWith(
          CompleteModel value, $Res Function(CompleteModel) then) =
      _$CompleteModelCopyWithImpl<$Res, CompleteModel>;
  @useResult
  $Res call(
      {String? id,
      String? surveyId,
      List<QuestionModel>? answers,
      String? mentalStateSnapshotIds});
}

/// @nodoc
class _$CompleteModelCopyWithImpl<$Res, $Val extends CompleteModel>
    implements $CompleteModelCopyWith<$Res> {
  _$CompleteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? answers = freezed,
    Object? mentalStateSnapshotIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyId: freezed == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
      mentalStateSnapshotIds: freezed == mentalStateSnapshotIds
          ? _value.mentalStateSnapshotIds
          : mentalStateSnapshotIds // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteModelImplCopyWith<$Res>
    implements $CompleteModelCopyWith<$Res> {
  factory _$$CompleteModelImplCopyWith(
          _$CompleteModelImpl value, $Res Function(_$CompleteModelImpl) then) =
      __$$CompleteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? surveyId,
      List<QuestionModel>? answers,
      String? mentalStateSnapshotIds});
}

/// @nodoc
class __$$CompleteModelImplCopyWithImpl<$Res>
    extends _$CompleteModelCopyWithImpl<$Res, _$CompleteModelImpl>
    implements _$$CompleteModelImplCopyWith<$Res> {
  __$$CompleteModelImplCopyWithImpl(
      _$CompleteModelImpl _value, $Res Function(_$CompleteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? answers = freezed,
    Object? mentalStateSnapshotIds = freezed,
  }) {
    return _then(_$CompleteModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyId: freezed == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
      mentalStateSnapshotIds: freezed == mentalStateSnapshotIds
          ? _value.mentalStateSnapshotIds
          : mentalStateSnapshotIds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteModelImpl implements _CompleteModel {
  const _$CompleteModelImpl(
      {this.id,
      this.surveyId,
      final List<QuestionModel>? answers,
      this.mentalStateSnapshotIds})
      : _answers = answers;

  factory _$CompleteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? surveyId;
  final List<QuestionModel>? _answers;
  @override
  List<QuestionModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mentalStateSnapshotIds;

  @override
  String toString() {
    return 'CompleteModel(id: $id, surveyId: $surveyId, answers: $answers, mentalStateSnapshotIds: $mentalStateSnapshotIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.mentalStateSnapshotIds, mentalStateSnapshotIds) ||
                other.mentalStateSnapshotIds == mentalStateSnapshotIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, surveyId,
      const DeepCollectionEquality().hash(_answers), mentalStateSnapshotIds);

  /// Create a copy of CompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteModelImplCopyWith<_$CompleteModelImpl> get copyWith =>
      __$$CompleteModelImplCopyWithImpl<_$CompleteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteModelImplToJson(
      this,
    );
  }
}

abstract class _CompleteModel implements CompleteModel {
  const factory _CompleteModel(
      {final String? id,
      final String? surveyId,
      final List<QuestionModel>? answers,
      final String? mentalStateSnapshotIds}) = _$CompleteModelImpl;

  factory _CompleteModel.fromJson(Map<String, dynamic> json) =
      _$CompleteModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get surveyId;
  @override
  List<QuestionModel>? get answers;
  @override
  String? get mentalStateSnapshotIds;

  /// Create a copy of CompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteModelImplCopyWith<_$CompleteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageForScreenModel {
  String get path => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Create a copy of ImageForScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageForScreenModelCopyWith<ImageForScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageForScreenModelCopyWith<$Res> {
  factory $ImageForScreenModelCopyWith(
          ImageForScreenModel value, $Res Function(ImageForScreenModel) then) =
      _$ImageForScreenModelCopyWithImpl<$Res, ImageForScreenModel>;
  @useResult
  $Res call({String path, double width, double height});
}

/// @nodoc
class _$ImageForScreenModelCopyWithImpl<$Res, $Val extends ImageForScreenModel>
    implements $ImageForScreenModelCopyWith<$Res> {
  _$ImageForScreenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageForScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageForScreenModelImplCopyWith<$Res>
    implements $ImageForScreenModelCopyWith<$Res> {
  factory _$$ImageForScreenModelImplCopyWith(_$ImageForScreenModelImpl value,
          $Res Function(_$ImageForScreenModelImpl) then) =
      __$$ImageForScreenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, double width, double height});
}

/// @nodoc
class __$$ImageForScreenModelImplCopyWithImpl<$Res>
    extends _$ImageForScreenModelCopyWithImpl<$Res, _$ImageForScreenModelImpl>
    implements _$$ImageForScreenModelImplCopyWith<$Res> {
  __$$ImageForScreenModelImplCopyWithImpl(_$ImageForScreenModelImpl _value,
      $Res Function(_$ImageForScreenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageForScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$ImageForScreenModelImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ImageForScreenModelImpl implements _ImageForScreenModel {
  const _$ImageForScreenModelImpl(
      {required this.path, this.width = 112, this.height = 112});

  @override
  final String path;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;

  @override
  String toString() {
    return 'ImageForScreenModel(path: $path, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageForScreenModelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, width, height);

  /// Create a copy of ImageForScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageForScreenModelImplCopyWith<_$ImageForScreenModelImpl> get copyWith =>
      __$$ImageForScreenModelImplCopyWithImpl<_$ImageForScreenModelImpl>(
          this, _$identity);
}

abstract class _ImageForScreenModel implements ImageForScreenModel {
  const factory _ImageForScreenModel(
      {required final String path,
      final double width,
      final double height}) = _$ImageForScreenModelImpl;

  @override
  String get path;
  @override
  double get width;
  @override
  double get height;

  /// Create a copy of ImageForScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageForScreenModelImplCopyWith<_$ImageForScreenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _AnsverModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

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
  $Res call({String? id, String? questionId, int? value});
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
    Object? id = freezed,
    Object? questionId = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnsverModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$AnsverModelImplCopyWith(
          _$AnsverModelImpl value, $Res Function(_$AnsverModelImpl) then) =
      __$$AnsverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? questionId, int? value});
}

/// @nodoc
class __$$AnsverModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$AnsverModelImpl>
    implements _$$AnsverModelImplCopyWith<$Res> {
  __$$AnsverModelImplCopyWithImpl(
      _$AnsverModelImpl _value, $Res Function(_$AnsverModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? value = freezed,
  }) {
    return _then(_$AnsverModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnsverModelImpl implements _AnsverModel {
  const _$AnsverModelImpl({this.id, this.questionId, this.value});

  factory _$AnsverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnsverModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? questionId;
  @override
  final int? value;

  @override
  String toString() {
    return 'QuestionModel(id: $id, questionId: $questionId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, value);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsverModelImplCopyWith<_$AnsverModelImpl> get copyWith =>
      __$$AnsverModelImplCopyWithImpl<_$AnsverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnsverModelImplToJson(
      this,
    );
  }
}

abstract class _AnsverModel implements QuestionModel {
  const factory _AnsverModel(
      {final String? id,
      final String? questionId,
      final int? value}) = _$AnsverModelImpl;

  factory _AnsverModel.fromJson(Map<String, dynamic> json) =
      _$AnsverModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get questionId;
  @override
  int? get value;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnsverModelImplCopyWith<_$AnsverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveySessionModel _$SurveySessionModelFromJson(Map<String, dynamic> json) {
  return _SurveySessionModel.fromJson(json);
}

/// @nodoc
mixin _$SurveySessionModel {
  Survey? get survey => throw _privateConstructorUsedError;
  Session? get session => throw _privateConstructorUsedError;

  /// Serializes this SurveySessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveySessionModelCopyWith<SurveySessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveySessionModelCopyWith<$Res> {
  factory $SurveySessionModelCopyWith(
          SurveySessionModel value, $Res Function(SurveySessionModel) then) =
      _$SurveySessionModelCopyWithImpl<$Res, SurveySessionModel>;
  @useResult
  $Res call({Survey? survey, Session? session});

  $SurveyCopyWith<$Res>? get survey;
  $SessionCopyWith<$Res>? get session;
}

/// @nodoc
class _$SurveySessionModelCopyWithImpl<$Res, $Val extends SurveySessionModel>
    implements $SurveySessionModelCopyWith<$Res> {
  _$SurveySessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? survey = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      survey: freezed == survey
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ) as $Val);
  }

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurveyCopyWith<$Res>? get survey {
    if (_value.survey == null) {
      return null;
    }

    return $SurveyCopyWith<$Res>(_value.survey!, (value) {
      return _then(_value.copyWith(survey: value) as $Val);
    });
  }

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $SessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurveySessionModelImplCopyWith<$Res>
    implements $SurveySessionModelCopyWith<$Res> {
  factory _$$SurveySessionModelImplCopyWith(_$SurveySessionModelImpl value,
          $Res Function(_$SurveySessionModelImpl) then) =
      __$$SurveySessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Survey? survey, Session? session});

  @override
  $SurveyCopyWith<$Res>? get survey;
  @override
  $SessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$SurveySessionModelImplCopyWithImpl<$Res>
    extends _$SurveySessionModelCopyWithImpl<$Res, _$SurveySessionModelImpl>
    implements _$$SurveySessionModelImplCopyWith<$Res> {
  __$$SurveySessionModelImplCopyWithImpl(_$SurveySessionModelImpl _value,
      $Res Function(_$SurveySessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? survey = freezed,
    Object? session = freezed,
  }) {
    return _then(_$SurveySessionModelImpl(
      survey: freezed == survey
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveySessionModelImpl implements _SurveySessionModel {
  const _$SurveySessionModelImpl({this.survey, this.session});

  factory _$SurveySessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveySessionModelImplFromJson(json);

  @override
  final Survey? survey;
  @override
  final Session? session;

  @override
  String toString() {
    return 'SurveySessionModel(survey: $survey, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveySessionModelImpl &&
            (identical(other.survey, survey) || other.survey == survey) &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, survey, session);

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveySessionModelImplCopyWith<_$SurveySessionModelImpl> get copyWith =>
      __$$SurveySessionModelImplCopyWithImpl<_$SurveySessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveySessionModelImplToJson(
      this,
    );
  }
}

abstract class _SurveySessionModel implements SurveySessionModel {
  const factory _SurveySessionModel(
      {final Survey? survey,
      final Session? session}) = _$SurveySessionModelImpl;

  factory _SurveySessionModel.fromJson(Map<String, dynamic> json) =
      _$SurveySessionModelImpl.fromJson;

  @override
  Survey? get survey;
  @override
  Session? get session;

  /// Create a copy of SurveySessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveySessionModelImplCopyWith<_$SurveySessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String? get id => throw _privateConstructorUsedError;
  String? get surveyId => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({String? id, String? surveyId});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyId: freezed == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? surveyId});
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
  }) {
    return _then(_$SessionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyId: freezed == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl({this.id, this.surveyId});

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String? id;
  @override
  final String? surveyId;

  @override
  String toString() {
    return 'Session(id: $id, surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, surveyId);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session({final String? id, final String? surveyId}) =
      _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String? get id;
  @override
  String? get surveyId;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<Question>? get questions => throw _privateConstructorUsedError;

  /// Serializes this Survey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call({String? id, String? slug, List<Question>? questions});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyImplCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$SurveyImplCopyWith(
          _$SurveyImpl value, $Res Function(_$SurveyImpl) then) =
      __$$SurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? slug, List<Question>? questions});
}

/// @nodoc
class __$$SurveyImplCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$SurveyImpl>
    implements _$$SurveyImplCopyWith<$Res> {
  __$$SurveyImplCopyWithImpl(
      _$SurveyImpl _value, $Res Function(_$SurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$SurveyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyImpl implements _Survey {
  const _$SurveyImpl({this.id, this.slug, final List<Question>? questions})
      : _questions = questions;

  factory _$SurveyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyImplFromJson(json);

  @override
  final String? id;
  @override
  final String? slug;
  final List<Question>? _questions;
  @override
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Survey(id: $id, slug: $slug, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, const DeepCollectionEquality().hash(_questions));

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      __$$SurveyImplCopyWithImpl<_$SurveyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyImplToJson(
      this,
    );
  }
}

abstract class _Survey implements Survey {
  const factory _Survey(
      {final String? id,
      final String? slug,
      final List<Question>? questions}) = _$SurveyImpl;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$SurveyImpl.fromJson;

  @override
  String? get id;
  @override
  String? get slug;
  @override
  List<Question>? get questions;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String? get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get scaleAnswerMin => throw _privateConstructorUsedError;
  int? get scaleAnswerMax => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get indexAnswerButton => throw _privateConstructorUsedError;
  String? get answerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  ImageForScreenModel? get image => throw _privateConstructorUsedError;

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String? id,
      String? content,
      int? scaleAnswerMin,
      int? scaleAnswerMax,
      int? order,
      int? indexAnswerButton,
      String? answerId,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      ImageForScreenModel? image});

  $ImageForScreenModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? scaleAnswerMin = freezed,
    Object? scaleAnswerMax = freezed,
    Object? order = freezed,
    Object? indexAnswerButton = freezed,
    Object? answerId = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      scaleAnswerMin: freezed == scaleAnswerMin
          ? _value.scaleAnswerMin
          : scaleAnswerMin // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleAnswerMax: freezed == scaleAnswerMax
          ? _value.scaleAnswerMax
          : scaleAnswerMax // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indexAnswerButton: freezed == indexAnswerButton
          ? _value.indexAnswerButton
          : indexAnswerButton // ignore: cast_nullable_to_non_nullable
              as int?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageForScreenModel?,
    ) as $Val);
  }

  /// Create a copy of Question
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
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? content,
      int? scaleAnswerMin,
      int? scaleAnswerMax,
      int? order,
      int? indexAnswerButton,
      String? answerId,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      ImageForScreenModel? image});

  @override
  $ImageForScreenModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? scaleAnswerMin = freezed,
    Object? scaleAnswerMax = freezed,
    Object? order = freezed,
    Object? indexAnswerButton = freezed,
    Object? answerId = freezed,
    Object? image = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      scaleAnswerMin: freezed == scaleAnswerMin
          ? _value.scaleAnswerMin
          : scaleAnswerMin // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleAnswerMax: freezed == scaleAnswerMax
          ? _value.scaleAnswerMax
          : scaleAnswerMax // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indexAnswerButton: freezed == indexAnswerButton
          ? _value.indexAnswerButton
          : indexAnswerButton // ignore: cast_nullable_to_non_nullable
              as int?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageForScreenModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {this.id,
      this.content,
      this.scaleAnswerMin,
      this.scaleAnswerMax,
      this.order,
      this.indexAnswerButton,
      this.answerId,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      this.image});

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String? id;
  @override
  final String? content;
  @override
  final int? scaleAnswerMin;
  @override
  final int? scaleAnswerMax;
  @override
  final int? order;
  @override
  final int? indexAnswerButton;
  @override
  final String? answerId;
  @override
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  final ImageForScreenModel? image;

  @override
  String toString() {
    return 'Question(id: $id, content: $content, scaleAnswerMin: $scaleAnswerMin, scaleAnswerMax: $scaleAnswerMax, order: $order, indexAnswerButton: $indexAnswerButton, answerId: $answerId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.scaleAnswerMin, scaleAnswerMin) ||
                other.scaleAnswerMin == scaleAnswerMin) &&
            (identical(other.scaleAnswerMax, scaleAnswerMax) ||
                other.scaleAnswerMax == scaleAnswerMax) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.indexAnswerButton, indexAnswerButton) ||
                other.indexAnswerButton == indexAnswerButton) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, scaleAnswerMin,
      scaleAnswerMax, order, indexAnswerButton, answerId, image);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final String? id,
      final String? content,
      final int? scaleAnswerMin,
      final int? scaleAnswerMax,
      final int? order,
      final int? indexAnswerButton,
      final String? answerId,
      @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
      final ImageForScreenModel? image}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String? get id;
  @override
  String? get content;
  @override
  int? get scaleAnswerMin;
  @override
  int? get scaleAnswerMax;
  @override
  int? get order;
  @override
  int? get indexAnswerButton;
  @override
  String? get answerId;
  @override
  @JsonKey(name: 'image', includeFromJson: false, includeToJson: false)
  ImageForScreenModel? get image;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
