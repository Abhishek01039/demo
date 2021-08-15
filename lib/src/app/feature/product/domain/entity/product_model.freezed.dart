// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(int? id, String? name, String? desc, String? image,
      double? price, double? mrp,
      [int quantity = 0]) {
    return _Product(
      id,
      name,
      desc,
      image,
      price,
      mrp,
      quantity,
    );
  }

  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get mrp => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? desc,
      String? image,
      double? price,
      double? mrp,
      int quantity});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? mrp = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      mrp: mrp == freezed
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? desc,
      String? image,
      double? price,
      double? mrp,
      int quantity});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? mrp = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_Product(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      mrp == freezed
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(this.id, this.name, this.desc, this.image, this.price, this.mrp,
      [this.quantity = 0]);

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? image;
  @override
  final double? price;
  @override
  final double? mrp;
  @JsonKey(defaultValue: 0)
  @override
  final int quantity;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, desc: $desc, image: $image, price: $price, mrp: $mrp, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.mrp, mrp) ||
                const DeepCollectionEquality().equals(other.mrp, mrp)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(mrp) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  factory _Product(int? id, String? name, String? desc, String? image,
      double? price, double? mrp,
      [int quantity]) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get desc => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  double? get mrp => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
