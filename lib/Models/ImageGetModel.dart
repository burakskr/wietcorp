import 'package:wietcorp/Models/ImageCategoryModel.dart';

class ImageGetModel {
  final List<ImageCategoryModel>? categories;
  final String? id;
  final String? url;
  final int? width;
  final int? height;

  ImageGetModel({
    required this.categories,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory ImageGetModel.fromJson(Map<String, dynamic> json) {
    return ImageGetModel(
      categories: ((json["categories"] ?? []) as List)
          .map((e) => ImageCategoryModel.fromJson(e))
          .toList(),
      id: json["id"],
      url: json["url"],
      width: json["width"],
      height: json["height"],
    );
  }
}
