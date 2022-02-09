// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credits_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditsDTO _$CreditsDTOFromJson(Map<String, dynamic> json) {
  return _CreditsDTO.fromJson(json);
}

/// @nodoc
class _$CreditsDTOTearOff {
  const _$CreditsDTOTearOff();

  _CreditsDTO call({required List<CastDTO> cast}) {
    return _CreditsDTO(
      cast: cast,
    );
  }

  CreditsDTO fromJson(Map<String, Object?> json) {
    return CreditsDTO.fromJson(json);
  }
}

/// @nodoc
const $CreditsDTO = _$CreditsDTOTearOff();

/// @nodoc
mixin _$CreditsDTO {
  List<CastDTO> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsDTOCopyWith<CreditsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsDTOCopyWith<$Res> {
  factory $CreditsDTOCopyWith(
          CreditsDTO value, $Res Function(CreditsDTO) then) =
      _$CreditsDTOCopyWithImpl<$Res>;
  $Res call({List<CastDTO> cast});
}

/// @nodoc
class _$CreditsDTOCopyWithImpl<$Res> implements $CreditsDTOCopyWith<$Res> {
  _$CreditsDTOCopyWithImpl(this._value, this._then);

  final CreditsDTO _value;
  // ignore: unused_field
  final $Res Function(CreditsDTO) _then;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CreditsDTOCopyWith<$Res> implements $CreditsDTOCopyWith<$Res> {
  factory _$CreditsDTOCopyWith(
          _CreditsDTO value, $Res Function(_CreditsDTO) then) =
      __$CreditsDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<CastDTO> cast});
}

/// @nodoc
class __$CreditsDTOCopyWithImpl<$Res> extends _$CreditsDTOCopyWithImpl<$Res>
    implements _$CreditsDTOCopyWith<$Res> {
  __$CreditsDTOCopyWithImpl(
      _CreditsDTO _value, $Res Function(_CreditsDTO) _then)
      : super(_value, (v) => _then(v as _CreditsDTO));

  @override
  _CreditsDTO get _value => super._value as _CreditsDTO;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_CreditsDTO(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditsDTO extends _CreditsDTO {
  const _$_CreditsDTO({required this.cast}) : super._();

  factory _$_CreditsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreditsDTOFromJson(json);

  @override
  final List<CastDTO> cast;

  @override
  String toString() {
    return 'CreditsDTO(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreditsDTO &&
            const DeepCollectionEquality().equals(other.cast, cast));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cast));

  @JsonKey(ignore: true)
  @override
  _$CreditsDTOCopyWith<_CreditsDTO> get copyWith =>
      __$CreditsDTOCopyWithImpl<_CreditsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditsDTOToJson(this);
  }
}

abstract class _CreditsDTO extends CreditsDTO {
  const factory _CreditsDTO({required List<CastDTO> cast}) = _$_CreditsDTO;
  const _CreditsDTO._() : super._();

  factory _CreditsDTO.fromJson(Map<String, dynamic> json) =
      _$_CreditsDTO.fromJson;

  @override
  List<CastDTO> get cast;
  @override
  @JsonKey(ignore: true)
  _$CreditsDTOCopyWith<_CreditsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
