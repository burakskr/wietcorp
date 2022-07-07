import 'package:wietcorp/Models/ImageGetModel.dart';
import 'package:wietcorp/Services/ImageServices.dart';
import 'package:wietcorp/Services/imageabstarctservices.dart';
import 'package:wietcorp/setuplocator.dart';

class ImageRepository implements ImageAbstractServices {
  final ImageServices _imageServices = locator<ImageServices>();
  Future<List<ImageGetModel>> getimagemodel() async {
    return _imageServices.getimagemodel();
  }
}
