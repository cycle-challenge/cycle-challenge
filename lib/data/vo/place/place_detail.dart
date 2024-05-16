class PlaceDetail {
  final String _id;

  final String? _siteURL;

  final String? _phoneNumber;

  final bool? _isOpeningNow;

  final List<String>? _businessHours;

  String get id => _id;

  List<String>? get businessHours => _businessHours;

  String? get siteURL => _siteURL;

  bool? get isOpeningNow => _isOpeningNow;

  String? get phoneNumber => _phoneNumber;

  PlaceDetail(
      {required String id,
      required String? siteURL,
      required String? phoneNumber,
      required bool? isOpeningNow,
      required List<String>? businessHours})
      : _id = id,
        _isOpeningNow = isOpeningNow,
        _phoneNumber = phoneNumber,
        _siteURL = siteURL,
        _businessHours = businessHours;

  factory PlaceDetail.of(Map<String, dynamic> json) {
    return PlaceDetail(
        id: json['id'],
        siteURL: json['websiteUri'],
        phoneNumber: json['nationalPhoneNumber'],
        isOpeningNow: json['regularOpeningHours']?["openNow"],
        businessHours: json['regularOpeningHours'] == null
            ? []
            : List.of(json['regularOpeningHours']?['weekdayDescriptions'])
                .map((e) => e.toString())
                .toList());
  }
}
