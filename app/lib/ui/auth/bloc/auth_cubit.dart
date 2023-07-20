part of app.ui.auth;

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState());

  void changeType(AuthType type) {
    emit(state.copyWith(type: type));
  }
}
