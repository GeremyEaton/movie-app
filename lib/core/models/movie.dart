import 'dart:convert';

List<Movie> movieFromJson(String str) =>
    new List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  String poster;
  String title;
  String type;
  String year;
  String imdbID;

  Movie({
    this.poster,
    this.title,
    this.type,
    this.year,
    this.imdbID,
  });

  factory Movie.fromJson(Map<String, dynamic> json) =>
      new Movie(
        poster: json["Poster"],
        title: json["Title"],
        type: json["Type"],
        year: json["Year"],
        imdbID: json["imdbID"],
      );

  Map<String, dynamic> toJson() =>
      {
        "poster": poster,
        "title": title,
        "type": type,
        "year": year,
        "imdbID": imdbID,
      };
}

