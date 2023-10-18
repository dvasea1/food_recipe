class AuthorModel {
  final String fullName;
  final String imageUrl;

  AuthorModel({required this.fullName, required this.imageUrl});

  AuthorModel.fromJson(Map<String, dynamic> map)
      : fullName = map['fullName'],
        imageUrl = map['imageUrl'];

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'imageUrl': imageUrl,
    };
  }
}
