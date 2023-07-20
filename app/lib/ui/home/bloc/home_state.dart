part of app.ui.home;

class HomeState extends Equatable {
  final int value;
  final String data;

  const HomeState({
    this.value = 0,
    this.data = '',
  });

  HomeState copyWith({
    int? value,
    String? data,
  }) {
    return HomeState(
      value: value ?? this.value,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props {
    return [
      value,
      data,
    ];
  }
}
