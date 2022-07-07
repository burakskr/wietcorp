import 'package:wietcorp/Models/ImageGetModel.dart';
import 'package:wietcorp/Repository/ImageRepository.dart';
import 'package:wietcorp/Services/imageabstarctservices.dart';
import 'package:wietcorp/setuplocator.dart';

class ImageViewModel implements ImageAbstractServices{
  final ImageRepository _imageRepository = locator<ImageRepository>();
  Future<List<ImageGetModel>> getimagemodel() async {
    return _imageRepository.getimagemodel();
  }
}
