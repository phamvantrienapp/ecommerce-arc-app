part of app.ui.home;

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeState());

  void increment() {
    emit(state.copyWith(
      value: state.value + 1,
    ));
  }

  void decrement() {
    emit(state.copyWith(
      value: state.value - 1,
    ));
  }
}
