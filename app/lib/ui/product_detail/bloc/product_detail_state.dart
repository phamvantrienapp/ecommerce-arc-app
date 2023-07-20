part of app.ui.product_detail;

class ProductDetailState extends Equatable {
  final int quantity;
  final LoadingStatus loadingStatus;

  const ProductDetailState({
    this.quantity = 1,
    this.loadingStatus = LoadingStatus.init,
  });

  ProductDetailState copyWith({
    int? quantity,
    LoadingStatus? loadingStatus,
  }) {
    return ProductDetailState(
      quantity: quantity ?? this.quantity,
      loadingStatus: loadingStatus ?? this.loadingStatus,
    );
  }

  @override
  List<Object?> get props {
    return [
      quantity,
      loadingStatus,
    ];
  }
}
