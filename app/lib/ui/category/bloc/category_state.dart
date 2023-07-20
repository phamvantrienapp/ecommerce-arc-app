part of app.ui.category;

class CategoryState extends Equatable {
  final LoadingStatus loadingStatus;

  const CategoryState({
    this.loadingStatus = LoadingStatus.init,
  });

  CategoryState copyWith({
    LoadingStatus? loadingStatus,
  }) {
    return CategoryState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
    );
  }

  @override
  List<Object?> get props {
    return [];
  }
}
