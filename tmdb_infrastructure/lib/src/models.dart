library root_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tmdb_infrastructure/src/serializers.dart';

part 'models.g.dart';

abstract class MovieListResponse
    implements Built<MovieListResponse, MovieListResponseBuilder> {
  MovieListResponse._();

  factory MovieListResponse([updates(MovieListResponseBuilder b)]) =
      _$MovieListResponse;

  @BuiltValueField(wireName: 'results')
  BuiltSet<Movie> get results;

  @BuiltValueField(wireName: 'page')
  int get page;

  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @BuiltValueField(wireName: 'dates')
  DateRange get dateRange;

  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieListResponse.serializer, this));
  }

  static MovieListResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<MovieListResponse> get serializer =>
      _$movieListResponseSerializer;
}

abstract class DateRange implements Built<DateRange, DateRangeBuilder> {
  DateRange._();

  factory DateRange([updates(DateRangeBuilder b)]) = _$DateRange;

  @BuiltValueField(wireName: 'maximum')
  String get maximum;
  @BuiltValueField(wireName: 'minimum')
  String get minimum;

  String toJson() {
    return json.encode(serializers.serializeWith(DateRange.serializer, this));
  }

  static DateRange fromJson(String jsonString) {
    return serializers.deserializeWith(
        DateRange.serializer, json.decode(jsonString));
  }

  static Serializer<DateRange> get serializer => _$dateRangeSerializer;
}

abstract class Movie implements Built<Movie, MovieBuilder> {
  Movie._();

  factory Movie([updates(MovieBuilder b)]) = _$Movie;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'video')
  bool get video;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'popularity')
  double get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIds;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  @BuiltValueField(wireName: 'adult')
  bool get adult;

  @BuiltValueField(wireName: 'overview')
  String get overview;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  String toJson() {
    return json.encode(serializers.serializeWith(Movie.serializer, this));
  }

  static Movie fromJson(String jsonString) {
    return serializers.deserializeWith(
        Movie.serializer, json.decode(jsonString));
  }

  static Serializer<Movie> get serializer => _$movieSerializer;
}

abstract class GenreListResponse
    implements Built<GenreListResponse, GenreListResponseBuilder> {
  GenreListResponse._();

  factory GenreListResponse([updates(GenreListResponseBuilder b)]) =
      _$GenreListResponse;

  @BuiltValueField(wireName: 'genres')
  BuiltSet<Genre> get genres;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GenreListResponse.serializer, this));
  }

  static GenreListResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenreListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<GenreListResponse> get serializer =>
      _$genreListResponseSerializer;
}

abstract class Genre implements Built<Genre, GenreBuilder> {
  Genre._();

  factory Genre([updates(GenreBuilder b)]) = _$Genre;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json.encode(serializers.serializeWith(Genre.serializer, this));
  }

  static Genre fromJson(String jsonString) {
    return serializers.deserializeWith(
        Genre.serializer, json.decode(jsonString));
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
}