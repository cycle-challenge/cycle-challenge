class PlaceDetail {
  final String? _address;

  final String? _siteURL;

  final String? _phoneNumber;

  final bool? _isOpeningNow;

  final List<String>? _businessHours;

  List<String>? get businessHours => _businessHours;

  String? get address => _address;

  String? get siteURL => _siteURL;

  bool? get isOpeningNow => _isOpeningNow;

  String? get phoneNumber => _phoneNumber;

  PlaceDetail(
      {required String? address,
      required String? siteURL,
      required String? phoneNumber,
      required bool? isOpeningNow,
      required List<String>? businessHours})
      : _isOpeningNow = isOpeningNow,
        _phoneNumber = phoneNumber,
        _siteURL = siteURL,
        _address = address,
        _businessHours = businessHours;

  factory PlaceDetail.of(Map<String, dynamic> json) {
    return PlaceDetail(
        address: json['shortFormattedAddress'],
        siteURL: json['websiteUri'],
        phoneNumber: json['nationalPhoneNumber'],
        isOpeningNow: json['regularOpeningHours']?["openNow"],
        businessHours:
            List.of(json['regularOpeningHours']?['weekdayDescriptions'])
                .map((e) => e.toString())
                .toList());
  }
}
