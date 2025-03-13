// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationBarState {
  bool get progressOn => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  int get indexOfTapped => throw _privateConstructorUsedError;
  List<Widget> get listOfWidget => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)?
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

  /// Create a copy of NavigationBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigationBarStateCopyWith<NavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarStateCopyWith<$Res> {
  factory $NavigationBarStateCopyWith(
          NavigationBarState value, $Res Function(NavigationBarState) then) =
      _$NavigationBarStateCopyWithImpl<$Res, NavigationBarState>;
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      int indexOfTapped,
      List<Widget> listOfWidget});
}

/// @nodoc
class _$NavigationBarStateCopyWithImpl<$Res, $Val extends NavigationBarState>
    implements $NavigationBarStateCopyWith<$Res> {
  _$NavigationBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? indexOfTapped = null,
    Object? listOfWidget = null,
  }) {
    return _then(_value.copyWith(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      indexOfTapped: null == indexOfTapped
          ? _value.indexOfTapped
          : indexOfTapped // ignore: cast_nullable_to_non_nullable
              as int,
      listOfWidget: null == listOfWidget
          ? _value.listOfWidget
          : listOfWidget // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NavigationBarStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progressOn,
      Object? error,
      int indexOfTapped,
      List<Widget> listOfWidget});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NavigationBarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressOn = null,
    Object? error = freezed,
    Object? indexOfTapped = null,
    Object? listOfWidget = null,
  }) {
    return _then(_$InitialImpl(
      progressOn: null == progressOn
          ? _value.progressOn
          : progressOn // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      indexOfTapped: null == indexOfTapped
          ? _value.indexOfTapped
          : indexOfTapped // ignore: cast_nullable_to_non_nullable
              as int,
      listOfWidget: null == listOfWidget
          ? _value._listOfWidget
          : listOfWidget // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.progressOn = false,
      this.error,
      this.indexOfTapped = 0,
      required final List<Widget> listOfWidget})
      : _listOfWidget = listOfWidget;

  @override
  @JsonKey()
  final bool progressOn;
  @override
  final Object? error;
  @override
  @JsonKey()
  final int indexOfTapped;
  final List<Widget> _listOfWidget;
  @override
  List<Widget> get listOfWidget {
    if (_listOfWidget is EqualUnmodifiableListView) return _listOfWidget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfWidget);
  }

  @override
  String toString() {
    return 'NavigationBarState.initial(progressOn: $progressOn, error: $error, indexOfTapped: $indexOfTapped, listOfWidget: $listOfWidget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.progressOn, progressOn) ||
                other.progressOn == progressOn) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.indexOfTapped, indexOfTapped) ||
                other.indexOfTapped == indexOfTapped) &&
            const DeepCollectionEquality()
                .equals(other._listOfWidget, _listOfWidget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      progressOn,
      const DeepCollectionEquality().hash(error),
      indexOfTapped,
      const DeepCollectionEquality().hash(_listOfWidget));

  /// Create a copy of NavigationBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)
        initial,
  }) {
    return initial(progressOn, error, indexOfTapped, listOfWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)?
        initial,
  }) {
    return initial?.call(progressOn, error, indexOfTapped, listOfWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool progressOn, Object? error, int indexOfTapped,
            List<Widget> listOfWidget)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(progressOn, error, indexOfTapped, listOfWidget);
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

abstract class _Initial implements NavigationBarState {
  const factory _Initial(
      {final bool progressOn,
      final Object? error,
      final int indexOfTapped,
      required final List<Widget> listOfWidget}) = _$InitialImpl;

  @override
  bool get progressOn;
  @override
  Object? get error;
  @override
  int get indexOfTapped;
  @override
  List<Widget> get listOfWidget;

  /// Create a copy of NavigationBarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
