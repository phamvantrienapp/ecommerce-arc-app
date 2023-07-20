part of app.ui.product_detail;

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit() : super(const ProductDetailState());

  void incrementQuantity() {
    emit(state.copyWith(
      quantity: state.quantity + 1,
    ));
  }

  void decrementQuantity() {
    emit(state.copyWith(
      quantity: state.quantity - 1,
    ));
  }
}
