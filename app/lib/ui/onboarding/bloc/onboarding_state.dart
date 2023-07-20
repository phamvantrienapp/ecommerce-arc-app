part of app.ui.onboarding;

class OnboardingState extends Equatable {
  final int selected;
  final List<String> data;
  final LoadingStatus status;
  final String error;

  const OnboardingState({
    this.selected = 0,
    this.data = const [],
    this.status = LoadingStatus.init,
    this.error = '',
  });

  OnboardingState copyWith({
    int? selected,
    List<String>? data,
    LoadingStatus? status,
    String? error,
  }) {
    return OnboardingState(
      selected: selected ?? this.selected,
      data: data ?? this.data,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      selected,
      data,
      status,
      error,
    ];
  }
}
