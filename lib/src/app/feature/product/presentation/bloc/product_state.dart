part of 'product_bloc.dart';

/// State when user tries to fetch products
@freezed
class ProductState with _$ProductState {
  /// Loading state of product Services
  const factory ProductState.loading() = _Loading;

  /// Success state of product Services
  const factory ProductState.success(List<Product?> products) = _Success;

  /// Error state of product Services
  const factory ProductState.failure(String errorMessage) = _Failure;
}
