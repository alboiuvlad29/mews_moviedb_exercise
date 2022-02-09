// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreDTO _$GenreDTOFromJson(Map<String, dynamic> json) {
  return _GenreDTO.fromJson(json);
}

/// @nodoc
class _$GenreDTOTearOff {
  const _$GenreDTOTearOff();

  _GenreDTO call({required int id, required String name}) {
    return _GenreDTO(
      id: id,
      name: name,
    );
  }

  GenreDTO fromJson(Map<String, Object?> json) {
    return GenreDTO.fromJson(json);
  }
}

/// @nodoc
const $GenreDTO = _$GenreDTOTearOff();

/// @nodoc
mixin _$GenreDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDTOCopyWith<GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDTOCopyWith<$Res> {
  factory $GenreDTOCopyWith(GenreDTO value, $Res Function(GenreDTO) then) =
      _$GenreDTOCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreDTOCopyWithImpl<$Res> implements $GenreDTOCopyWith<$Res> {
  _$GenreDTOCopyWithImpl(this._value, this._then);

  final GenreDTO _value;
  // ignore: unused_field
  final $Res Function(GenreDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenreDTOCopyWith<$Res> implements $GenreDTOCopyWith<$Res> {
  factory _$GenreDTOCopyWith(_GenreDTO value, $Res Function(_GenreDTO) then) =
      __$GenreDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$GenreDTOCopyWithImpl<$Res> extends _$GenreDTOCopyWithImpl<$Res>
    implements _$GenreDTOCopyWith<$Res> {
  __$GenreDTOCopyWithImpl(_GenreDTO _value, $Res Function(_GenreDTO) _then)
      : super(_value, (v) => _then(v as _GenreDTO));

  @override
  _GenreDTO get _value => super._value as _GenreDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_GenreDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreDTO extends _GenreDTO {
  const _$_GenreDTO({required this.id, required this.name}) : super._();

  factory _$_GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GenreDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreDTOCopyWith<_GenreDTO> get copyWith =>
      __$GenreDTOCopyWithImpl<_GenreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreDTOToJson(this);
  }
}

abstract class _GenreDTO extends GenreDTO {
  const factory _GenreDTO({required int id, required String name}) =
      _$_GenreDTO;
  const _GenreDTO._() : super._();

  factory _GenreDTO.fromJson(Map<String, dynamic> json) = _$_GenreDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreDTOCopyWith<_GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
