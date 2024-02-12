// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageState _$LanguageStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'system':
      return _System.fromJson(json);
    case 'english':
      return _English.fromJson(json);
    case 'vietnamese':
      return _Vietnamese.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LanguageState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageCode) system,
    required TResult Function() english,
    required TResult Function() vietnamese,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageCode)? system,
    TResult? Function()? english,
    TResult? Function()? vietnamese,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageCode)? system,
    TResult Function()? english,
    TResult Function()? vietnamese,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_English value) english,
    required TResult Function(_Vietnamese value) vietnamese,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_English value)? english,
    TResult? Function(_Vietnamese value)? vietnamese,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_English value)? english,
    TResult Function(_Vietnamese value)? vietnamese,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? languageCode});
}

/// @nodoc
class __$$SystemImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$SystemImpl>
    implements _$$SystemImplCopyWith<$Res> {
  __$$SystemImplCopyWithImpl(
      _$SystemImpl _value, $Res Function(_$SystemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_$SystemImpl(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemImpl with DiagnosticableTreeMixin implements _System {
  const _$SystemImpl({this.languageCode, final String? $type})
      : $type = $type ?? 'system';

  factory _$SystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemImplFromJson(json);

  @override
  final String? languageCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageState.system(languageCode: $languageCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguageState.system'))
      ..add(DiagnosticsProperty('languageCode', languageCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemImplCopyWith<_$SystemImpl> get copyWith =>
      __$$SystemImplCopyWithImpl<_$SystemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageCode) system,
    required TResult Function() english,
    required TResult Function() vietnamese,
  }) {
    return system(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageCode)? system,
    TResult? Function()? english,
    TResult? Function()? vietnamese,
  }) {
    return system?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageCode)? system,
    TResult Function()? english,
    TResult Function()? vietnamese,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_English value) english,
    required TResult Function(_Vietnamese value) vietnamese,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_English value)? english,
    TResult? Function(_Vietnamese value)? vietnamese,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_English value)? english,
    TResult Function(_Vietnamese value)? vietnamese,
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

abstract class _System implements LanguageState {
  const factory _System({final String? languageCode}) = _$SystemImpl;

  factory _System.fromJson(Map<String, dynamic> json) = _$SystemImpl.fromJson;

  String? get languageCode;
  @JsonKey(ignore: true)
  _$$SystemImplCopyWith<_$SystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnglishImplCopyWith<$Res> {
  factory _$$EnglishImplCopyWith(
          _$EnglishImpl value, $Res Function(_$EnglishImpl) then) =
      __$$EnglishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnglishImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$EnglishImpl>
    implements _$$EnglishImplCopyWith<$Res> {
  __$$EnglishImplCopyWithImpl(
      _$EnglishImpl _value, $Res Function(_$EnglishImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EnglishImpl with DiagnosticableTreeMixin implements _English {
  const _$EnglishImpl({final String? $type}) : $type = $type ?? 'english';

  factory _$EnglishImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnglishImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageState.english()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LanguageState.english'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnglishImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageCode) system,
    required TResult Function() english,
    required TResult Function() vietnamese,
  }) {
    return english();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageCode)? system,
    TResult? Function()? english,
    TResult? Function()? vietnamese,
  }) {
    return english?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageCode)? system,
    TResult Function()? english,
    TResult Function()? vietnamese,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_English value) english,
    required TResult Function(_Vietnamese value) vietnamese,
  }) {
    return english(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_English value)? english,
    TResult? Function(_Vietnamese value)? vietnamese,
  }) {
    return english?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_English value)? english,
    TResult Function(_Vietnamese value)? vietnamese,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EnglishImplToJson(
      this,
    );
  }
}

abstract class _English implements LanguageState {
  const factory _English() = _$EnglishImpl;

  factory _English.fromJson(Map<String, dynamic> json) = _$EnglishImpl.fromJson;
}

/// @nodoc
abstract class _$$VietnameseImplCopyWith<$Res> {
  factory _$$VietnameseImplCopyWith(
          _$VietnameseImpl value, $Res Function(_$VietnameseImpl) then) =
      __$$VietnameseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VietnameseImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$VietnameseImpl>
    implements _$$VietnameseImplCopyWith<$Res> {
  __$$VietnameseImplCopyWithImpl(
      _$VietnameseImpl _value, $Res Function(_$VietnameseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VietnameseImpl with DiagnosticableTreeMixin implements _Vietnamese {
  const _$VietnameseImpl({final String? $type}) : $type = $type ?? 'vietnamese';

  factory _$VietnameseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VietnameseImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageState.vietnamese()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LanguageState.vietnamese'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VietnameseImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageCode) system,
    required TResult Function() english,
    required TResult Function() vietnamese,
  }) {
    return vietnamese();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageCode)? system,
    TResult? Function()? english,
    TResult? Function()? vietnamese,
  }) {
    return vietnamese?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageCode)? system,
    TResult Function()? english,
    TResult Function()? vietnamese,
    required TResult orElse(),
  }) {
    if (vietnamese != null) {
      return vietnamese();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_English value) english,
    required TResult Function(_Vietnamese value) vietnamese,
  }) {
    return vietnamese(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_System value)? system,
    TResult? Function(_English value)? english,
    TResult? Function(_Vietnamese value)? vietnamese,
  }) {
    return vietnamese?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_English value)? english,
    TResult Function(_Vietnamese value)? vietnamese,
    required TResult orElse(),
  }) {
    if (vietnamese != null) {
      return vietnamese(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VietnameseImplToJson(
      this,
    );
  }
}

abstract class _Vietnamese implements LanguageState {
  const factory _Vietnamese() = _$VietnameseImpl;

  factory _Vietnamese.fromJson(Map<String, dynamic> json) =
      _$VietnameseImpl.fromJson;
}
