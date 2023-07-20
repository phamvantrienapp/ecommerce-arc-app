part of domain;

abstract class Reponsitory {
  bool get isLoggedIn;

  bool get isFirstLaunchApp;

  bool get isFirstLogin;

  bool get isDarkMode;

  LanguageCode get languageCode;

  Stream<bool> get onConnectivityChanged;

  Future<void> login(String email, String password);

  Future<void> logout();

  Future<void> resetPassword({
    required String token,
    required String email,
    required String password,
    required String confirmPassword,
  });

  Future<void> forgotPassword(String email);

  Future<void> register({
    required String username,
    required String email,
    required String password,
    required Gender gender,
  });

  // User getUserPreference();

  // Future<void> clearCurrentUserData();

  // Future<bool> saveDeviceToken(String deviceToken);

  // Future<bool> saveIsFirstLogin(bool isFirstLogin);

  // Future<bool> saveIsFirstLaunchApp(bool isFirstLaunchApp);

  // Future<PagedList<User>> getUsers({
  //   required int page,
  //   required int? limit,
  // });

  // Future<bool> saveIsDarkMode(bool isDarkMode);

  // Future<bool> saveLanguageCode(LanguageCode languageCode);

  // Future<User> getMe();

  // int putLocalUser(User user);

  // Stream<List<User>> getLocalUsersStream();

  // List<User> getLocalUsers();

  // User? getLocalUser(int id);

  // bool deleteImageUrl(int id);

  // int deleteAllUsersAndImageUrls();
}
