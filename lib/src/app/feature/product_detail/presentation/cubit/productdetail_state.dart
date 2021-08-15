part of 'productdetail_cubit.dart';

/// State when user tries to fetch product details by id
@freezed
class ProductdetailState with _$ProductdetailState {
  /// Loading state of product detail Services
  const factory ProductdetailState.loading() = _Loading;

  /// Success state of product detail Services
  const factory ProductdetailState.success(Product? product) = _Success;

  /// Error state of product detail Services
  const factory ProductdetailState.failure(String errorMessage) = Failure;
}
