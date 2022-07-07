import 'package:get_it/get_it.dart';
import 'package:wietcorp/Repository/ImageRepository.dart';
import 'package:wietcorp/Services/ImageServices.dart';

GetIt locator = GetIt.instance;

void setuplocator() {
  locator.registerLazySingleton(() => ImageServices());
  locator.registerLazySingleton(() => ImageRepository());
}
