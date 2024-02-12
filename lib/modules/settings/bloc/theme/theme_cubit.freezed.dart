// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'system':
      return _System.fromJson(json);
    case 'light':
      return _Light.fromJson(json);
    case 'dark':
      return _Dark.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ThemeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function() light,
    required TResult Function() dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function()? light,
    TResult? Function()? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_Light value)? light,
    TResult? Function(_Dark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SystemImplCopyWith<$Res> {
  factory _$$SystemImplCopyWith(
          _$SystemImpl value, $Res Function(_$SystemImpl) then) =
      __$$SystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$SystemImpl>
    implements _$$SystemImplCopyWith<$Res> {
  __$$SystemImplCopyWithImpl(
      _$SystemImpl _value, $Res Function(_$SystemImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SystemImpl implements _System {
  const _$SystemImpl({final String? $type}) : $type = $type ?? 'system';

  factory _$SystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SystemImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function()? light,
    TResult? Function()? dark,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_Light value)? light,
    TResult? Function(_Dark value)? dark,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemImplToJson(
      this,
    );
  }
}

abstract class _System implements ThemeState {
  const factory _System() = _$SystemImpl;

  factory _System.fromJson(Map<String, dynamic> json) = _$SystemImpl.fromJson;
}

/// @nodoc
abstract class _$$LightImplCopyWith<$Res> {
  factory _$$LightImplCopyWith(
          _$LightImpl value, $Res Function(_$LightImpl) then) =
      __$$LightImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LightImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$LightImpl>
    implements _$$LightImplCopyWith<$Res> {
  __$$LightImplCopyWithImpl(
      _$LightImpl _value, $Res Function(_$LightImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LightImpl implements _Light {
  const _$LightImpl({final String? $type}) : $type = $type ?? 'light';

  factory _$LightImpl.fromJson(Map<String, dynamic> json) =>
      _$$LightImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LightImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function()? light,
    TResult? Function()? dark,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_Light value)? light,
    TResult? Function(_Dark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LightImplToJson(
      this,
    );
  }
}

abstract class _Light implements ThemeState {
  const factory _Light() = _$LightImpl;

  factory _Light.fromJson(Map<String, dynamic> json) = _$LightImpl.fromJson;
}

/// @nodoc
abstract class _$$DarkImplCopyWith<$Res> {
  factory _$$DarkImplCopyWith(
          _$DarkImpl value, $Res Function(_$DarkImpl) then) =
      __$$DarkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DarkImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$DarkImpl>
    implements _$$DarkImplCopyWith<$Res> {
  __$$DarkImplCopyWithImpl(_$DarkImpl _value, $Res Function(_$DarkImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DarkImpl implements _Dark {
  const _$DarkImpl({final String? $type}) : $type = $type ?? 'dark';

  factory _$DarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DarkImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DarkImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function()? light,
    TResult? Function()? dark,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_Light value)? light,
    TResult? Function(_Dark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DarkImplToJson(
      this,
    );
  }
}

abstract class _Dark implements ThemeState {
  const factory _Dark() = _$DarkImpl;

  factory _Dark.fromJson(Map<String, dynamic> json) = _$DarkImpl.fromJson;
}
