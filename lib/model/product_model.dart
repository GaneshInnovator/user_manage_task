class ProductModel {
  final String id;
  final String title;
  final String? subtitle;
  final String description;
  final String thumbnail;
  final double? averageRating;

  ProductModel({
    required this.id,
    required this.title,
    this.subtitle,
    required this.description,
    required this.thumbnail,
    this.averageRating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      description: json['description'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
      averageRating: json['averageRating']?.toDouble(),
    );
  }
}
