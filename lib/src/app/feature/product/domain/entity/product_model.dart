import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

/// Product model class
@freezed
class Product with _$Product {
  /// Constructor
  factory Product(int? id, String? name, String? desc, String? image,
      double? price, double? mrp,
      [@Default(0) int quantity]) = _Product;

  /// FromJson and toJson method for [Product] model class
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
