part of domain.enums;

enum LoadingStatus {
  init,
  loading,
  loadingSuccess,
  loadingError,
  loadMore,
  refreshing,
  refreshingSuccess,
  refreshingError,
}

extension LoadingStatusX on LoadingStatus {
  bool get isIntl => this == LoadingStatus.init;
  bool get isLoading => this == LoadingStatus.loading;
  bool get isLoadingSuccess => this == LoadingStatus.loadingSuccess;
  bool get isLoadingError => this == LoadingStatus.loadingError;
  bool get isLoadMore => this == LoadingStatus.loadMore;
  bool get isRefreshing => this == LoadingStatus.refreshing;
  bool get isRefreshingSuccess => this == LoadingStatus.refreshingSuccess;
  bool get isRefreshingError => this == LoadingStatus.refreshingError;
}
