// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'carmaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Carmaker _$CarmakerFromJson(Map<String, dynamic> json) {
  return _Carmaker.fromJson(json);
}

/// @nodoc
mixin _$Carmaker {
  String? get maker => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarmakerCopyWith<Carmaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarmakerCopyWith<$Res> {
  factory $CarmakerCopyWith(Carmaker value, $Res Function(Carmaker) then) =
      _$CarmakerCopyWithImpl<$Res>;
  $Res call({String? maker, String? product, int? price});
}

/// @nodoc
class _$CarmakerCopyWithImpl<$Res> implements $CarmakerCopyWith<$Res> {
  _$CarmakerCopyWithImpl(this._value, this._then);

  final Carmaker _value;
  // ignore: unused_field
  final $Res Function(Carmaker) _then;

  @override
  $Res call({
    Object? maker = freezed,
    Object? product = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      maker: maker == freezed
          ? _value.maker
          : maker // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CarmakerCopyWith<$Res> implements $CarmakerCopyWith<$Res> {
  factory _$$_CarmakerCopyWith(
          _$_Carmaker value, $Res Function(_$_Carmaker) then) =
      __$$_CarmakerCopyWithImpl<$Res>;
  @override
  $Res call({String? maker, String? product, int? price});
}

/// @nodoc
class __$$_CarmakerCopyWithImpl<$Res> extends _$CarmakerCopyWithImpl<$Res>
    implements _$$_CarmakerCopyWith<$Res> {
  __$$_CarmakerCopyWithImpl(
      _$_Carmaker _value, $Res Function(_$_Carmaker) _then)
      : super(_value, (v) => _then(v as _$_Carmaker));

  @override
  _$_Carmaker get _value => super._value as _$_Carmaker;

  @override
  $Res call({
    Object? maker = freezed,
    Object? product = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Carmaker(
      maker: maker == freezed
          ? _value.maker
          : maker // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Carmaker implements _Carmaker {
  _$_Carmaker({this.maker, this.product, this.price});

  factory _$_Carmaker.fromJson(Map<String, dynamic> json) =>
      _$$_CarmakerFromJson(json);

  @override
  final String? maker;
  @override
  final String? product;
  @override
  final int? price;

  @override
  String toString() {
    return 'Carmaker(maker: $maker, product: $product, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Carmaker &&
            const DeepCollectionEquality().equals(other.maker, maker) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maker),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_CarmakerCopyWith<_$_Carmaker> get copyWith =>
      __$$_CarmakerCopyWithImpl<_$_Carmaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarmakerToJson(
      this,
    );
  }
}

abstract class _Carmaker implements Carmaker {
  factory _Carmaker(
      {final String? maker,
      final String? product,
      final int? price}) = _$_Carmaker;

  factory _Carmaker.fromJson(Map<String, dynamic> json) = _$_Carmaker.fromJson;

  @override
  String? get maker;
  @override
  String? get product;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$_CarmakerCopyWith<_$_Carmaker> get copyWith =>
      throw _privateConstructorUsedError;
}
