import 'package:bloc/bloc.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product_detail/domain/usecases/get_product_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'productdetail_state.dart';
part 'productdetail_cubit.freezed.dart';

/// Productdetail Cubit Class for listen events of product detail features
class ProductdetailCubit extends Cubit<ProductdetailState> {
  /// Constructor
  ProductdetailCubit({required GetProductDetail getProductDetail})
      : _getProductDetail = getProductDetail,
        super(const ProductdetailState.loading());

  /// Instance of [GetProductDetail]
  final GetProductDetail _getProductDetail;

  /// Fetch product details
  Future<void> fetchProductDetail(int id) async {
    emit(const ProductdetailState.loading());

    try {
      final product = await _getProductDetail.call(id);
      if (product == null) {
        throw Exception('Something went wrong');
      }

      emit(ProductdetailState.success(product));
    } catch (e) {
      emit(ProductdetailState.failure(e.toString()));
    }
  }
}
