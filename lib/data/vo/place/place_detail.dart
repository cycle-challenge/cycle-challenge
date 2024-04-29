class PlaceDetail {
  final String _id;

  final String? _address;

  final String? _siteURL;

  final String? _phoneNumber;

  final bool? _isOpeningNow;

  final List<String>? _businessHours;

  final double _latitude;

  final double _longitude;

  String get id => _id;

  double get latitude => _latitude;

  double get longitude => _longitude;

  List<String>? get businessHours => _businessHours;

  String? get address => _address;

  String? get siteURL => _siteURL;

  bool? get isOpeningNow => _isOpeningNow;

  String? get phoneNumber => _phoneNumber;

  PlaceDetail(
      {required String id,
      required double latitude,
      required double longitude,
      required String? address,
      required String? siteURL,
      required String? phoneNumber,
      required bool? isOpeningNow,
      required List<String>? businessHours})
      : _id = id,
        _latitude = latitude,
        _longitude = longitude,
        _isOpeningNow = isOpeningNow,
        _phoneNumber = phoneNumber,
        _siteURL = siteURL,
        _address = address,
        _businessHours = businessHours;

  factory PlaceDetail.of(Map<String, dynamic> json) {
    return PlaceDetail(
        id: json['id'],
        latitude: json['location']['latitude'],
        longitude: json['location']['longitude'],
        address: json['formattedAddress'],
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
