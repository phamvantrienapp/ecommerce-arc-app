part of domain.enums;

enum LanguageCode {
  vi,
  en,
  fr,
}

extension LanguageCodeX on LanguageCode {
  bool get isVi => this == LanguageCode.vi;
  bool get isEn => this == LanguageCode.en;
  bool get isFr => this == LanguageCode.fr;
}
