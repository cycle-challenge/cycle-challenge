
class Image {
  final int id;

  final String small;

  final String medium;

  final String large;

  const Image(
      {required this.id,
        required this.small,
        required this.medium,
        required this.large});

  factory Image.of(Map<String, dynamic> json) {
    return Image(
        id: json['id'],
        small: json['small'],
        medium: json['medium'],
        large: json['large']);
  }
}
