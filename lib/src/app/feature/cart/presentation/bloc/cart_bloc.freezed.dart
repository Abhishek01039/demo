// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Increment increment(List<Product?> cart, int prodId) {
    return _Increment(
      cart,
      prodId,
    );
  }

  _Decrement decrement(List<Product?> cart, int prodId) {
    return _Decrement(
      cart,
      prodId,
    );
  }

  _Remove remove(List<Product?> cart, int prodId) {
    return _Remove(
      cart,
      prodId,
    );
  }

  _AddToCart addToCartEvent(Product product) {
    return _AddToCart(
      product,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$IncrementCopyWith<$Res> {
  factory _$IncrementCopyWith(
          _Increment value, $Res Function(_Increment) then) =
      __$IncrementCopyWithImpl<$Res>;
  $Res call({List<Product?> cart, int prodId});
}

/// @nodoc
class __$IncrementCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$IncrementCopyWith<$Res> {
  __$IncrementCopyWithImpl(_Increment _value, $Res Function(_Increment) _then)
      : super(_value, (v) => _then(v as _Increment));

  @override
  _Increment get _value => super._value as _Increment;

  @override
  $Res call({
    Object? cart = freezed,
    Object? prodId = freezed,
  }) {
    return _then(_Increment(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Product?>,
      prodId == freezed
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Increment implements _Increment {
  const _$_Increment(this.cart, this.prodId);

  @override
  final List<Product?> cart;
  @override
  final int prodId;

  @override
  String toString() {
    return 'CartEvent.increment(cart: $cart, prodId: $prodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Increment &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)) &&
            (identical(other.prodId, prodId) ||
                const DeepCollectionEquality().equals(other.prodId, prodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cart) ^
      const DeepCollectionEquality().hash(prodId);

  @JsonKey(ignore: true)
  @override
  _$IncrementCopyWith<_Increment> get copyWith =>
      __$IncrementCopyWithImpl<_Increment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) {
    return increment(cart, prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(cart, prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements CartEvent {
  const factory _Increment(List<Product?> cart, int prodId) = _$_Increment;

  List<Product?> get cart => throw _privateConstructorUsedError;
  int get prodId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncrementCopyWith<_Increment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecrementCopyWith<$Res> {
  factory _$DecrementCopyWith(
          _Decrement value, $Res Function(_Decrement) then) =
      __$DecrementCopyWithImpl<$Res>;
  $Res call({List<Product?> cart, int prodId});
}

/// @nodoc
class __$DecrementCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$DecrementCopyWith<$Res> {
  __$DecrementCopyWithImpl(_Decrement _value, $Res Function(_Decrement) _then)
      : super(_value, (v) => _then(v as _Decrement));

  @override
  _Decrement get _value => super._value as _Decrement;

  @override
  $Res call({
    Object? cart = freezed,
    Object? prodId = freezed,
  }) {
    return _then(_Decrement(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Product?>,
      prodId == freezed
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Decrement implements _Decrement {
  const _$_Decrement(this.cart, this.prodId);

  @override
  final List<Product?> cart;
  @override
  final int prodId;

  @override
  String toString() {
    return 'CartEvent.decrement(cart: $cart, prodId: $prodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Decrement &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)) &&
            (identical(other.prodId, prodId) ||
                const DeepCollectionEquality().equals(other.prodId, prodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cart) ^
      const DeepCollectionEquality().hash(prodId);

  @JsonKey(ignore: true)
  @override
  _$DecrementCopyWith<_Decrement> get copyWith =>
      __$DecrementCopyWithImpl<_Decrement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) {
    return decrement(cart, prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(cart, prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements CartEvent {
  const factory _Decrement(List<Product?> cart, int prodId) = _$_Decrement;

  List<Product?> get cart => throw _privateConstructorUsedError;
  int get prodId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DecrementCopyWith<_Decrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({List<Product?> cart, int prodId});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object? cart = freezed,
    Object? prodId = freezed,
  }) {
    return _then(_Remove(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Product?>,
      prodId == freezed
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove(this.cart, this.prodId);

  @override
  final List<Product?> cart;
  @override
  final int prodId;

  @override
  String toString() {
    return 'CartEvent.remove(cart: $cart, prodId: $prodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remove &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)) &&
            (identical(other.prodId, prodId) ||
                const DeepCollectionEquality().equals(other.prodId, prodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cart) ^
      const DeepCollectionEquality().hash(prodId);

  @JsonKey(ignore: true)
  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) {
    return remove(cart, prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(cart, prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements CartEvent {
  const factory _Remove(List<Product?> cart, int prodId) = _$_Remove;

  List<Product?> get cart => throw _privateConstructorUsedError;
  int get prodId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveCopyWith<_Remove> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_AddToCart(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.addToCartEvent(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCart &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Product?> cart, int prodId) increment,
    required TResult Function(List<Product?> cart, int prodId) decrement,
    required TResult Function(List<Product?> cart, int prodId) remove,
    required TResult Function(Product product) addToCartEvent,
  }) {
    return addToCartEvent(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product?> cart, int prodId)? increment,
    TResult Function(List<Product?> cart, int prodId)? decrement,
    TResult Function(List<Product?> cart, int prodId)? remove,
    TResult Function(Product product)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddToCart value) addToCartEvent,
  }) {
    return addToCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddToCart value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(Product product) = _$_AddToCart;

  Product get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Success success(List<Product?> cart) {
    return _Success(
      cart,
    );
  }

  Failure failure(String errorMessage) {
    return Failure(
      errorMessage,
    );
  }

  AddToCartSuccess addToCartSuccess() {
    return const AddToCartSuccess();
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product?> cart) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product?> cart)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product?> cart) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() addToCartSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product?> cart)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Product?> cart});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? cart = freezed,
  }) {
    return _then(_Success(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<Product?>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.cart);

  @override
  final List<Product?> cart;

  @override
  String toString() {
    return 'CartState.success(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product?> cart) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() addToCartSuccess,
  }) {
    return success(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product?> cart)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CartState {
  const factory _Success(List<Product?> cart) = _$_Success;

  List<Product?> get cart => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(Failure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product?> cart) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() addToCartSuccess,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product?> cart)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CartState {
  const factory Failure(String errorMessage) = _$Failure;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartSuccessCopyWith<$Res> {
  factory $AddToCartSuccessCopyWith(
          AddToCartSuccess value, $Res Function(AddToCartSuccess) then) =
      _$AddToCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToCartSuccessCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $AddToCartSuccessCopyWith<$Res> {
  _$AddToCartSuccessCopyWithImpl(
      AddToCartSuccess _value, $Res Function(AddToCartSuccess) _then)
      : super(_value, (v) => _then(v as AddToCartSuccess));

  @override
  AddToCartSuccess get _value => super._value as AddToCartSuccess;
}

/// @nodoc

class _$AddToCartSuccess implements AddToCartSuccess {
  const _$AddToCartSuccess();

  @override
  String toString() {
    return 'CartState.addToCartSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddToCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product?> cart) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() addToCartSuccess,
  }) {
    return addToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product?> cart)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class AddToCartSuccess implements CartState {
  const factory AddToCartSuccess() = _$AddToCartSuccess;
}
