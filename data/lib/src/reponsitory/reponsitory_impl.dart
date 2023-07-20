part of data;

class ReponsitoryImp implements Reponsitory {
  @override
  Future<void> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  // TODO: implement isDarkMode
  bool get isDarkMode => throw UnimplementedError();

  @override
  // TODO: implement isFirstLaunchApp
  bool get isFirstLaunchApp => throw UnimplementedError();

  @override
  // TODO: implement isFirstLogin
  bool get isFirstLogin => throw UnimplementedError();

  @override
  // TODO: implement isLoggedIn
  bool get isLoggedIn => throw UnimplementedError();

  @override
  // TODO: implement languageCode
  LanguageCode get languageCode => throw UnimplementedError();

  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  // TODO: implement onConnectivityChanged
  Stream<bool> get onConnectivityChanged => throw UnimplementedError();

  @override
  Future<void> register(
      {required String username,
      required String email,
      required String password,
      required Gender gender}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> resetPassword(
      {required String token,
      required String email,
      required String password,
      required String confirmPassword}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
