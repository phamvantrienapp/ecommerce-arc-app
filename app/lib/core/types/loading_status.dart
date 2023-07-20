enum LoadingStatus {
  init,
  loading,
  loadingSuccess,
  loadingEmpty,
  loadingError,
  loadMore,
  refresh,
  end,
}

extension LoadingStatusX on LoadingStatus {
  bool get isInit => this == LoadingStatus.init;
  bool get isLoading => this == LoadingStatus.loading;
  bool get isLoadingSucces => this == LoadingStatus.loadingSuccess;
  bool get isEmpty => this == LoadingStatus.loadingEmpty;
  bool get isError => this == LoadingStatus.loadingError;
  bool get isLoadMore => this == LoadingStatus.loadMore;
  bool get isRefresh => this == LoadingStatus.refresh;
  bool get isEnd => this == LoadingStatus.end;
}
