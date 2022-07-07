class ImageCategoryModel {
  final int? id;
  final String? name;

  ImageCategoryModel({
    required this.id,
    required this.name,
  });

  factory ImageCategoryModel.fromJson(Map<String, dynamic> json) {
    return ImageCategoryModel(
      id: json["id"],
      name: json["name"],
    );
  }
}
