import 'package:get_it/get_it.dart';
import 'package:movie_app/core/services/movies_service.dart';
import 'package:movie_app/core/view_models/marvel_movie_model.dart';

GetIt locator = GetIt();

void setupLocator() {

  // locator.registerLazySingleton(() => Service());
  locator.registerLazySingleton(() => MoviesService());

 // locator.registerFactory(() => ViewModel());
 locator.registerFactory(() => MarvelMovieViewModel());

}