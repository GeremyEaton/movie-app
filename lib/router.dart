import 'package:flutter/material.dart';
import 'package:movie_app/ui/pages/home_view.dart';
import 'package:movie_app/ui/pages/marvel_movie_view.dart';
import 'package:movie_app/ui/pages/not_found_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => PageHomeView());
      case 'marvel':
        return MaterialPageRoute(builder: (_) => PageMarvelMovieView());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundView());
    }
  }
}
