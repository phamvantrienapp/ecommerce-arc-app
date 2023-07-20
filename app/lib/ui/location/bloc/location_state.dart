part of app.ui.location;

class LocationState extends Equatable {
  final LoadingStatus loadingStatus;

  const LocationState({
    this.loadingStatus = LoadingStatus.init,
  });

  LocationState copyWith({
    LoadingStatus? loadingStatus,
  }) {
    return LocationState(
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
