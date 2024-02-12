// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ta_slide_transition_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TASlideTransitionState {
  Map<SlideTransitionDirection, Offset> get slideTransitionDirection =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TASlideTransitionStateCopyWith<TASlideTransitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TASlideTransitionStateCopyWith<$Res> {
  factory $TASlideTransitionStateCopyWith(TASlideTransitionState value,
          $Res Function(TASlideTransitionState) then) =
      _$TASlideTransitionStateCopyWithImpl<$Res, TASlideTransitionState>;
  @useResult
  $Res call({Map<SlideTransitionDirection, Offset> slideTransitionDirection});
}

/// @nodoc
class _$TASlideTransitionStateCopyWithImpl<$Res,
        $Val extends TASlideTransitionState>
    implements $TASlideTransitionStateCopyWith<$Res> {
  _$TASlideTransitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slideTransitionDirection = null,
  }) {
    return _then(_value.copyWith(
      slideTransitionDirection: null == slideTransitionDirection
          ? _value.slideTransitionDirection
          : slideTransitionDirection // ignore: cast_nullable_to_non_nullable
              as Map<SlideTransitionDirection, Offset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TASlideTransitionStateImplCopyWith<$Res>
    implements $TASlideTransitionStateCopyWith<$Res> {
  factory _$$TASlideTransitionStateImplCopyWith(
          _$TASlideTransitionStateImpl value,
          $Res Function(_$TASlideTransitionStateImpl) then) =
      __$$TASlideTransitionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<SlideTransitionDirection, Offset> slideTransitionDirection});
}

/// @nodoc
class __$$TASlideTransitionStateImplCopyWithImpl<$Res>
    extends _$TASlideTransitionStateCopyWithImpl<$Res,
        _$TASlideTransitionStateImpl>
    implements _$$TASlideTransitionStateImplCopyWith<$Res> {
  __$$TASlideTransitionStateImplCopyWithImpl(
      _$TASlideTransitionStateImpl _value,
      $Res Function(_$TASlideTransitionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slideTransitionDirection = null,
  }) {
    return _then(_$TASlideTransitionStateImpl(
      slideTransitionDirection: null == slideTransitionDirection
          ? _value._slideTransitionDirection
          : slideTransitionDirection // ignore: cast_nullable_to_non_nullable
              as Map<SlideTransitionDirection, Offset>,
    ));
  }
}

/// @nodoc

class _$TASlideTransitionStateImpl implements _TASlideTransitionState {
  const _$TASlideTransitionStateImpl(
      {required final Map<SlideTransitionDirection, Offset>
          slideTransitionDirection})
      : _slideTransitionDirection = slideTransitionDirection;

  final Map<SlideTransitionDirection, Offset> _slideTransitionDirection;
  @override
  Map<SlideTransitionDirection, Offset> get slideTransitionDirection {
    if (_slideTransitionDirection is EqualUnmodifiableMapView)
      return _slideTransitionDirection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_slideTransitionDirection);
  }

  @override
  String toString() {
    return 'TASlideTransitionState(slideTransitionDirection: $slideTransitionDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TASlideTransitionStateImpl &&
            const DeepCollectionEquality().equals(
                other._slideTransitionDirection, _slideTransitionDirection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_slideTransitionDirection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TASlideTransitionStateImplCopyWith<_$TASlideTransitionStateImpl>
      get copyWith => __$$TASlideTransitionStateImplCopyWithImpl<
          _$TASlideTransitionStateImpl>(this, _$identity);
}

abstract class _TASlideTransitionState implements TASlideTransitionState {
  const factory _TASlideTransitionState(
      {required final Map<SlideTransitionDirection, Offset>
          slideTransitionDirection}) = _$TASlideTransitionStateImpl;

  @override
  Map<SlideTransitionDirection, Offset> get slideTransitionDirection;
  @override
  @JsonKey(ignore: true)
  _$$TASlideTransitionStateImplCopyWith<_$TASlideTransitionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
