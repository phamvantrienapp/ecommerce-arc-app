part of app.ui.onboarding;

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState());

  void selectItem(int value) {
    emit(state.copyWith(selected: value));
  }

  void updateData(data) {
    emit(state.copyWith(data: data));
  }
}
