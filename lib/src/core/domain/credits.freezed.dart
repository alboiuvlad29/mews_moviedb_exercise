// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreditsTearOff {
  const _$CreditsTearOff();

  _Credits call({required List<Cast> cast}) {
    return _Credits(
      cast: cast,
    );
  }
}

/// @nodoc
const $Credits = _$CreditsTearOff();

/// @nodoc
mixin _$Credits {
  List<Cast> get cast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditsCopyWith<Credits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res>;
  $Res call({List<Cast> cast});
}

/// @nodoc
class _$CreditsCopyWithImpl<$Res> implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  final Credits _value;
  // ignore: unused_field
  final $Res Function(Credits) _then;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
abstract class _$CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$CreditsCopyWith(_Credits value, $Res Function(_Credits) then) =
      __$CreditsCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> cast});
}

/// @nodoc
class __$CreditsCopyWithImpl<$Res> extends _$CreditsCopyWithImpl<$Res>
    implements _$CreditsCopyWith<$Res> {
  __$CreditsCopyWithImpl(_Credits _value, $Res Function(_Credits) _then)
      : super(_value, (v) => _then(v as _Credits));

  @override
  _Credits get _value => super._value as _Credits;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_Credits(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

class _$_Credits extends _Credits {
  const _$_Credits({required this.cast}) : super._();

  @override
  final List<Cast> cast;

  @override
  String toString() {
    return 'Credits(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Credits &&
            const DeepCollectionEquality().equals(other.cast, cast));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cast));

  @JsonKey(ignore: true)
  @override
  _$CreditsCopyWith<_Credits> get copyWith =>
      __$CreditsCopyWithImpl<_Credits>(this, _$identity);
}

abstract class _Credits extends Credits {
  const factory _Credits({required List<Cast> cast}) = _$_Credits;
  const _Credits._() : super._();

  @override
  List<Cast> get cast;
  @override
  @JsonKey(ignore: true)
  _$CreditsCopyWith<_Credits> get copyWith =>
      throw _privateConstructorUsedError;
}
