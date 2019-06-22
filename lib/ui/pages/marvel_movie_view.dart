import 'package:flutter/material.dart';

import 'package:movie_app/core/enums/viewState.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/core/view_models/marvel_movie_model.dart';

import 'package:movie_app/ui/menu_view.dart';
import 'package:movie_app/ui/base_view.dart';

class PageMarvelMovieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Marvel Movie'),
        ),
        drawer: Menu(),
        body: BaseView<MarvelMovieViewModel>(
            onModelReady: (model) => model.getMovies(),
            builder: (context, model, child) => Container(
                  child: model.state == ViewState.Busy
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Column(
                          children: <Widget>[
                            Expanded(child: renderMovies(model.movies))
                          ],
                        ),
                )));
  }

  renderMovies(List<Movie> movies) => ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 7.0,
            margin: EdgeInsets.all(7.0),
            child: ListTile(
                leading: Image.network("${movies[index].poster}"),
                subtitle: Text("${movies[index].year}"),
                title: Text("${movies[index].title}")),
          );
        },
      );
}
