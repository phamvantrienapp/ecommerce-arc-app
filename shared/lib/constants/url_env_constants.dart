part of shared;

class UrlEnvConstants {
  const UrlEnvConstants._();

  /// Path
  static const dev = 'define.dev.env';
  static const pro = 'define.pro.env';
  static const uat = 'define.uat.env';
  static const qa = 'define.qa.env';
}

enum EnvType {
  dev,
  uat,
  qa,
  pro,
}

extension EnvTypeX on EnvType {
  bool get isDev => this == EnvType.dev;
  bool get isUat => this == EnvType.uat;
  bool get isQa => this == EnvType.qa;
  bool get isPro => this == EnvType.pro;
}
