// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journey_general_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JournayRoadModel _$JournayRoadModelFromJson(Map<String, dynamic> json) {
  return _JournayRoadModel.fromJson(json);
}

/// @nodoc
mixin _$JournayRoadModel {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<CheckPointModel> get checkPoints => throw _privateConstructorUsedError;

  /// Serializes this JournayRoadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JournayRoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournayRoadModelCopyWith<JournayRoadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournayRoadModelCopyWith<$Res> {
  factory $JournayRoadModelCopyWith(
          JournayRoadModel value, $Res Function(JournayRoadModel) then) =
      _$JournayRoadModelCopyWithImpl<$Res, JournayRoadModel>;
  @useResult
  $Res call({String? id, String? type, List<CheckPointModel> checkPoints});
}

/// @nodoc
class _$JournayRoadModelCopyWithImpl<$Res, $Val extends JournayRoadModel>
    implements $JournayRoadModelCopyWith<$Res> {
  _$JournayRoadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournayRoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? checkPoints = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      checkPoints: null == checkPoints
          ? _value.checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPointModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JournayRoadModelImplCopyWith<$Res>
    implements $JournayRoadModelCopyWith<$Res> {
  factory _$$JournayRoadModelImplCopyWith(_$JournayRoadModelImpl value,
          $Res Function(_$JournayRoadModelImpl) then) =
      __$$JournayRoadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? type, List<CheckPointModel> checkPoints});
}

/// @nodoc
class __$$JournayRoadModelImplCopyWithImpl<$Res>
    extends _$JournayRoadModelCopyWithImpl<$Res, _$JournayRoadModelImpl>
    implements _$$JournayRoadModelImplCopyWith<$Res> {
  __$$JournayRoadModelImplCopyWithImpl(_$JournayRoadModelImpl _value,
      $Res Function(_$JournayRoadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournayRoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? checkPoints = null,
  }) {
    return _then(_$JournayRoadModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      checkPoints: null == checkPoints
          ? _value._checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPointModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JournayRoadModelImpl implements _JournayRoadModel {
  const _$JournayRoadModelImpl(
      {this.id, this.type, final List<CheckPointModel> checkPoints = const []})
      : _checkPoints = checkPoints;

  factory _$JournayRoadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournayRoadModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  final List<CheckPointModel> _checkPoints;
  @override
  @JsonKey()
  List<CheckPointModel> get checkPoints {
    if (_checkPoints is EqualUnmodifiableListView) return _checkPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkPoints);
  }

  @override
  String toString() {
    return 'JournayRoadModel(id: $id, type: $type, checkPoints: $checkPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournayRoadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._checkPoints, _checkPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_checkPoints));

  /// Create a copy of JournayRoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournayRoadModelImplCopyWith<_$JournayRoadModelImpl> get copyWith =>
      __$$JournayRoadModelImplCopyWithImpl<_$JournayRoadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournayRoadModelImplToJson(
      this,
    );
  }
}

abstract class _JournayRoadModel implements JournayRoadModel {
  const factory _JournayRoadModel(
      {final String? id,
      final String? type,
      final List<CheckPointModel> checkPoints}) = _$JournayRoadModelImpl;

  factory _JournayRoadModel.fromJson(Map<String, dynamic> json) =
      _$JournayRoadModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  List<CheckPointModel> get checkPoints;

  /// Create a copy of JournayRoadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournayRoadModelImplCopyWith<_$JournayRoadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckPointModel _$CheckPointModelFromJson(Map<String, dynamic> json) {
  return _CheckPointModel.fromJson(json);
}

/// @nodoc
mixin _$CheckPointModel {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<PracticeModel> get practices => throw _privateConstructorUsedError;

  /// Serializes this CheckPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckPointModelCopyWith<CheckPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPointModelCopyWith<$Res> {
  factory $CheckPointModelCopyWith(
          CheckPointModel value, $Res Function(CheckPointModel) then) =
      _$CheckPointModelCopyWithImpl<$Res, CheckPointModel>;
  @useResult
  $Res call({String? id, String? type, List<PracticeModel> practices});
}

/// @nodoc
class _$CheckPointModelCopyWithImpl<$Res, $Val extends CheckPointModel>
    implements $CheckPointModelCopyWith<$Res> {
  _$CheckPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? practices = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      practices: null == practices
          ? _value.practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPointModelImplCopyWith<$Res>
    implements $CheckPointModelCopyWith<$Res> {
  factory _$$CheckPointModelImplCopyWith(_$CheckPointModelImpl value,
          $Res Function(_$CheckPointModelImpl) then) =
      __$$CheckPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? type, List<PracticeModel> practices});
}

/// @nodoc
class __$$CheckPointModelImplCopyWithImpl<$Res>
    extends _$CheckPointModelCopyWithImpl<$Res, _$CheckPointModelImpl>
    implements _$$CheckPointModelImplCopyWith<$Res> {
  __$$CheckPointModelImplCopyWithImpl(
      _$CheckPointModelImpl _value, $Res Function(_$CheckPointModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? practices = null,
  }) {
    return _then(_$CheckPointModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      practices: null == practices
          ? _value._practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckPointModelImpl implements _CheckPointModel {
  const _$CheckPointModelImpl(
      {this.id, this.type, final List<PracticeModel> practices = const []})
      : _practices = practices;

  factory _$CheckPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckPointModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  final List<PracticeModel> _practices;
  @override
  @JsonKey()
  List<PracticeModel> get practices {
    if (_practices is EqualUnmodifiableListView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_practices);
  }

  @override
  String toString() {
    return 'CheckPointModel(id: $id, type: $type, practices: $practices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPointModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._practices, _practices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_practices));

  /// Create a copy of CheckPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPointModelImplCopyWith<_$CheckPointModelImpl> get copyWith =>
      __$$CheckPointModelImplCopyWithImpl<_$CheckPointModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckPointModelImplToJson(
      this,
    );
  }
}

abstract class _CheckPointModel implements CheckPointModel {
  const factory _CheckPointModel(
      {final String? id,
      final String? type,
      final List<PracticeModel> practices}) = _$CheckPointModelImpl;

  factory _CheckPointModel.fromJson(Map<String, dynamic> json) =
      _$CheckPointModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  List<PracticeModel> get practices;

  /// Create a copy of CheckPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPointModelImplCopyWith<_$CheckPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PracticeModel _$PracticeModelFromJson(Map<String, dynamic> json) {
  return _PracticeModel.fromJson(json);
}

/// @nodoc
mixin _$PracticeModel {
  String? get id => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get additionalImage => throw _privateConstructorUsedError;

  /// Serializes this PracticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PracticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeModelCopyWith<PracticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeModelCopyWith<$Res> {
  factory $PracticeModelCopyWith(
          PracticeModel value, $Res Function(PracticeModel) then) =
      _$PracticeModelCopyWithImpl<$Res, PracticeModel>;
  @useResult
  $Res call(
      {String? id,
      bool isCompleted,
      String? type,
      String? image,
      String? additionalImage});
}

/// @nodoc
class _$PracticeModelCopyWithImpl<$Res, $Val extends PracticeModel>
    implements $PracticeModelCopyWith<$Res> {
  _$PracticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isCompleted = null,
    Object? type = freezed,
    Object? image = freezed,
    Object? additionalImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalImage: freezed == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeModelImplCopyWith<$Res>
    implements $PracticeModelCopyWith<$Res> {
  factory _$$PracticeModelImplCopyWith(
          _$PracticeModelImpl value, $Res Function(_$PracticeModelImpl) then) =
      __$$PracticeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool isCompleted,
      String? type,
      String? image,
      String? additionalImage});
}

/// @nodoc
class __$$PracticeModelImplCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res, _$PracticeModelImpl>
    implements _$$PracticeModelImplCopyWith<$Res> {
  __$$PracticeModelImplCopyWithImpl(
      _$PracticeModelImpl _value, $Res Function(_$PracticeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isCompleted = null,
    Object? type = freezed,
    Object? image = freezed,
    Object? additionalImage = freezed,
  }) {
    return _then(_$PracticeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalImage: freezed == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PracticeModelImpl implements _PracticeModel {
  const _$PracticeModelImpl(
      {this.id,
      this.isCompleted = false,
      this.type,
      this.image,
      this.additionalImage});

  factory _$PracticeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PracticeModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String? type;
  @override
  final String? image;
  @override
  final String? additionalImage;

  @override
  String toString() {
    return 'PracticeModel(id: $id, isCompleted: $isCompleted, type: $type, image: $image, additionalImage: $additionalImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.additionalImage, additionalImage) ||
                other.additionalImage == additionalImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isCompleted, type, image, additionalImage);

  /// Create a copy of PracticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeModelImplCopyWith<_$PracticeModelImpl> get copyWith =>
      __$$PracticeModelImplCopyWithImpl<_$PracticeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticeModelImplToJson(
      this,
    );
  }
}

abstract class _PracticeModel implements PracticeModel {
  const factory _PracticeModel(
      {final String? id,
      final bool isCompleted,
      final String? type,
      final String? image,
      final String? additionalImage}) = _$PracticeModelImpl;

  factory _PracticeModel.fromJson(Map<String, dynamic> json) =
      _$PracticeModelImpl.fromJson;

  @override
  String? get id;
  @override
  bool get isCompleted;
  @override
  String? get type;
  @override
  String? get image;
  @override
  String? get additionalImage;

  /// Create a copy of PracticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeModelImplCopyWith<_$PracticeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JourneyActiveTaskModel _$JourneyActiveTaskModelFromJson(
    Map<String, dynamic> json) {
  return _JourneyActiveTaskModel.fromJson(json);
}

/// @nodoc
mixin _$JourneyActiveTaskModel {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get task => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this JourneyActiveTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyActiveTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyActiveTaskModelCopyWith<JourneyActiveTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyActiveTaskModelCopyWith<$Res> {
  factory $JourneyActiveTaskModelCopyWith(JourneyActiveTaskModel value,
          $Res Function(JourneyActiveTaskModel) then) =
      _$JourneyActiveTaskModelCopyWithImpl<$Res, JourneyActiveTaskModel>;
  @useResult
  $Res call({String? id, String? type, String? task, bool isCompleted});
}

/// @nodoc
class _$JourneyActiveTaskModelCopyWithImpl<$Res,
        $Val extends JourneyActiveTaskModel>
    implements $JourneyActiveTaskModelCopyWith<$Res> {
  _$JourneyActiveTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyActiveTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? task = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JourneyActiveTaskModelImplCopyWith<$Res>
    implements $JourneyActiveTaskModelCopyWith<$Res> {
  factory _$$JourneyActiveTaskModelImplCopyWith(
          _$JourneyActiveTaskModelImpl value,
          $Res Function(_$JourneyActiveTaskModelImpl) then) =
      __$$JourneyActiveTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? type, String? task, bool isCompleted});
}

/// @nodoc
class __$$JourneyActiveTaskModelImplCopyWithImpl<$Res>
    extends _$JourneyActiveTaskModelCopyWithImpl<$Res,
        _$JourneyActiveTaskModelImpl>
    implements _$$JourneyActiveTaskModelImplCopyWith<$Res> {
  __$$JourneyActiveTaskModelImplCopyWithImpl(
      _$JourneyActiveTaskModelImpl _value,
      $Res Function(_$JourneyActiveTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyActiveTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? task = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$JourneyActiveTaskModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyActiveTaskModelImpl implements _JourneyActiveTaskModel {
  const _$JourneyActiveTaskModelImpl(
      {this.id, this.type, this.task, this.isCompleted = false});

  factory _$JourneyActiveTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyActiveTaskModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? task;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'JourneyActiveTaskModel(id: $id, type: $type, task: $task, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyActiveTaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, task, isCompleted);

  /// Create a copy of JourneyActiveTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyActiveTaskModelImplCopyWith<_$JourneyActiveTaskModelImpl>
      get copyWith => __$$JourneyActiveTaskModelImplCopyWithImpl<
          _$JourneyActiveTaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyActiveTaskModelImplToJson(
      this,
    );
  }
}

abstract class _JourneyActiveTaskModel implements JourneyActiveTaskModel {
  const factory _JourneyActiveTaskModel(
      {final String? id,
      final String? type,
      final String? task,
      final bool isCompleted}) = _$JourneyActiveTaskModelImpl;

  factory _JourneyActiveTaskModel.fromJson(Map<String, dynamic> json) =
      _$JourneyActiveTaskModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get task;
  @override
  bool get isCompleted;

  /// Create a copy of JourneyActiveTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyActiveTaskModelImplCopyWith<_$JourneyActiveTaskModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
