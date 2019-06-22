import 'package:movie_app/core/enums/viewState.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/core/services/movies_service.dart';
import 'package:movie_app/core/view_models/base_model.dart';
import 'package:movie_app/locator.dart';

class MarvelMovieViewModel extends BaseModel {
  MoviesService _service= locator<MoviesService>();

  List<Movie> movies;

  Future getMovies() async {
    setState(ViewState.Busy);
    movies = await _service.searchMarvelMovie();
    setState(ViewState.Idle);
  }
}
