import 'package:dio/dio.dart';
import 'package:wietcorp/Models/ImageGetModel.dart';
import 'package:wietcorp/Services/imageabstarctservices.dart';

class ImageServices implements ImageAbstractServices {
  static const String baseurl = "https://api.thecatapi.com";
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseurl,
    ),
  );
  Future<List<ImageGetModel>> getimagemodel() async {
    List<ImageGetModel> imagemodels = [];
    var response = await dio.get(
      "/v1/images/search",
      queryParameters: {
        "limit": 80,
        "mime_types": "",
        "order": "Random",
        "size": "small",
        "page": 3,
        "sub_id": "demo-ce06ee",
      },
    );
    if (response.statusCode == 200) {
      imagemodels = (response.data as List)
          .map((e) => ImageGetModel.fromJson(e))
          .toList();
    }
    return imagemodels;
  }
}
