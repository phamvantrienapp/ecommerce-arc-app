part of app.ui.search;

class SearchState extends Equatable {
  final LoadingStatus loadingStatus;

  const SearchState({
    this.loadingStatus = LoadingStatus.init,
  });

  SearchState copyWith({
    LoadingStatus? loadingStatus,
  }) {
    return SearchState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
    );
  }

  @override
  List<Object?> get props {
    return [
      loadingStatus,
    ];
  }
}
