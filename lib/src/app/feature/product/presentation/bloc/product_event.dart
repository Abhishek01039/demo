part of 'product_bloc.dart';

/// All events of Product
@freezed
class ProductEvent with _$ProductEvent {
  /// Initial event for products
  const factory ProductEvent.started() = _Started;
}
