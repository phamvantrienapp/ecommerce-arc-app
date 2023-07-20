part of shared;

class EnvContants {
  static final env = dotenv.get('appDomain');
  static const appBasicAuthNameKey = 'APP_BASIC_AUTH_NAME';
  static const appBasicAuthPasswordKey = 'APP_BASIC_AUTH_PASSWORD';

  static String getfileName(EnvType type) {
    switch (type) {
      case EnvType.dev:
        return UrlEnvConstants.dev;
      case EnvType.uat:
        return UrlEnvConstants.uat;
      case EnvType.qa:
        return UrlEnvConstants.qa;
      case EnvType.pro:
        return UrlEnvConstants.pro;
      default:
        return UrlEnvConstants.dev;
    }
  }

  static load(EnvType type) async {
    final fileName = getfileName(type);
    await dotenv.load(fileName: fileName);
  }
}
