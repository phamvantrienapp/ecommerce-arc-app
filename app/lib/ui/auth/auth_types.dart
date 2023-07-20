part of app.ui.auth;

enum AuthType {
  login,
  signUp,
}

extension LoginMenuTypeX on AuthType {
  bool get isLogin => this == AuthType.login;
  bool get isSignUp => this == AuthType.signUp;
}
