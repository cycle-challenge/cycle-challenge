import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile(
      {required String email,
      required String name,
      required String ageGroup,
      required String gender}) = _Profile;

  static String getAgeGroup(int age) {
    if (age < 30) return 's20';
    if (age < 40) return 's30';
    if (age < 50) return 's40';
    if (age < 60) return 's50';

    return 'P60';
  }

  factory Profile.fromJson(Map<String, dynamic> json) {
    final birthDate = DateTime(
        json['birthdays'][0]['date']['year'],
        json['birthdays'][0]['date']['month'],
        json['birthdays'][0]['date']['day']);

    final age = DateTime.now().difference(birthDate).inDays ~/ 365;

    return Profile(
        email: json['emailAddresses'][0]['value'],
        name: json['names'][0]['displayName'],
        ageGroup: getAgeGroup(age),
        gender: json['genders'][0]['value']);
  }
}
