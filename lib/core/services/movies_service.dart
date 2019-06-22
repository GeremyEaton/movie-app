import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/core/models/movie.dart';

class MoviesService {
  static const _apiBaseUrl = "http://www.omdbapi.com/?apikey=d8832c39";
  var client = new http.Client();

  Future<List<Movie>> searchMarvelMovie() async {
    var movies = List<Movie>();
    var response = await client.get("$_apiBaseUrl&type=movie&s=marvel");

    // parse into List
    var parsed = json.decode(response.body);
    var search = parsed["Search"];
    print('$search');
    // loop and convert each item to Post
    for (var movie in search) {
      movies.add(Movie.fromJson(movie));
    }

    return movies;
  }
}
