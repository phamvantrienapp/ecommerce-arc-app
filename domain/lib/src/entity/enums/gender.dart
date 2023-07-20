part of domain.enums;

enum Gender {
  male,
  female,
  other,
}

extension GenderX on Gender {
  bool get isMale => this == Gender.male;
  bool get isFeMale => this == Gender.female;
  bool get isOther => this == Gender.other;
}
