import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product/domain/usecases/get_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_event.dart';
part 'product_state.dart';

part 'product_bloc.freezed.dart';

/// Product BLoC Class for listen events of product features
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  /// constructor
  ProductBloc({required GetProduct getProduct})
      : _getProduct = getProduct,
        super(const _Loading()) {
    /// Add intial event to [ProductBloc]
    add(const ProductEvent.started());
  }

  final GetProduct _getProduct;

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield* event.when(started: () async* {
      yield const ProductState.loading();

      try {
        final product = await _getProduct.call(NoParams());

        if (product == null) {
          throw Exception('Something went wrong');
        }

        yield ProductState.success(product);
      } catch (e) {
        yield ProductState.failure(e.toString());
      }
    });
  }
}
