// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastDTO _$CastDTOFromJson(Map<String, dynamic> json) {
  return _CastDTO.fromJson(json);
}

/// @nodoc
class _$CastDTOTearOff {
  const _$CastDTOTearOff();

  _CastDTO call(
      {required String name, required String character, String? profilePath}) {
    return _CastDTO(
      name: name,
      character: character,
      profilePath: profilePath,
    );
  }

  CastDTO fromJson(Map<String, Object?> json) {
    return CastDTO.fromJson(json);
  }
}

/// @nodoc
const $CastDTO = _$CastDTOTearOff();

/// @nodoc
mixin _$CastDTO {
  String get name => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastDTOCopyWith<CastDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDTOCopyWith<$Res> {
  factory $CastDTOCopyWith(CastDTO value, $Res Function(CastDTO) then) =
      _$CastDTOCopyWithImpl<$Res>;
  $Res call({String name, String character, String? profilePath});
}

/// @nodoc
class _$CastDTOCopyWithImpl<$Res> implements $CastDTOCopyWith<$Res> {
  _$CastDTOCopyWithImpl(this._value, this._then);

  final CastDTO _value;
  // ignore: unused_field
  final $Res Function(CastDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CastDTOCopyWith<$Res> implements $CastDTOCopyWith<$Res> {
  factory _$CastDTOCopyWith(_CastDTO value, $Res Function(_CastDTO) then) =
      __$CastDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String character, String? profilePath});
}

/// @nodoc
class __$CastDTOCopyWithImpl<$Res> extends _$CastDTOCopyWithImpl<$Res>
    implements _$CastDTOCopyWith<$Res> {
  __$CastDTOCopyWithImpl(_CastDTO _value, $Res Function(_CastDTO) _then)
      : super(_value, (v) => _then(v as _CastDTO));

  @override
  _CastDTO get _value => super._value as _CastDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_CastDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastDTO extends _CastDTO {
  const _$_CastDTO(
      {required this.name, required this.character, this.profilePath})
      : super._();

  factory _$_CastDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CastDTOFromJson(json);

  @override
  final String name;
  @override
  final String character;
  @override
  final String? profilePath;

  @override
  String toString() {
    return 'CastDTO(name: $name, character: $character, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CastDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(profilePath));

  @JsonKey(ignore: true)
  @override
  _$CastDTOCopyWith<_CastDTO> get copyWith =>
      __$CastDTOCopyWithImpl<_CastDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastDTOToJson(this);
  }
}

abstract class _CastDTO extends CastDTO {
  const factory _CastDTO(
      {required String name,
      required String character,
      String? profilePath}) = _$_CastDTO;
  const _CastDTO._() : super._();

  factory _CastDTO.fromJson(Map<String, dynamic> json) = _$_CastDTO.fromJson;

  @override
  String get name;
  @override
  String get character;
  @override
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$CastDTOCopyWith<_CastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
