import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';
import 'package:flutter/material.dart';

class MovieMapper {

  static Movie movieDBToEntity(MovieMovieDB moviedb) =>Movie(
  adult: moviedb.adult,
  backdropPath: (moviedb.backdropPath != '' )
  ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
  : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQppJKxBxJI-9UWLe2VVmzuBd24zsq4_ihxZw&s',
  genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
  id: moviedb.id,
  originalLanguage: moviedb.originalLanguage,
  originalTitle: moviedb.originalTitle,
  overview: moviedb.overview,
  popularity: moviedb.popularity,
  posterPath: (moviedb.posterPath != '')
  ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
  : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoWcWg0E8pSjBNi0TtiZsqu8uD2PAr_K11DA&s',
  releaseDate: moviedb.releaseDate != null ? moviedb.releaseDate! : DateTime.now(),
  title: moviedb.title,
  video: moviedb.video,
  voteAverage: moviedb.voteAverage,
  voteCount: moviedb.voteCount);


  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '' )
    ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
    : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQppJKxBxJI-9UWLe2VVmzuBd24zsq4_ihxZw&s',
    genreIds: moviedb.genres.map((e) => e.name).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
    ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
    : 'no-poster',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount
  );

}