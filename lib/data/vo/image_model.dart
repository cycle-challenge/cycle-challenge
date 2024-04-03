
class ImageModel {
  final int id;

  final String small;

  final String medium;

  final String large;

  const ImageModel(
      {required this.id,
        required this.small,
        required this.medium,
        required this.large});

  factory ImageModel.of(Map<String, dynamic> json) {
    return ImageModel(
        id: json['id'],
        small: json['small'],
        medium: json['medium'],
        large: json['large']);
  }
}
