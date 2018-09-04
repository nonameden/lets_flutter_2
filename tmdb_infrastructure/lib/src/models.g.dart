// GENERATED CODE - DO NOT MODIFY BY HAND

part of root_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new

Serializer<MovieListResponse> _$movieListResponseSerializer =
    new _$MovieListResponseSerializer();
Serializer<DateRange> _$dateRangeSerializer = new _$DateRangeSerializer();
Serializer<Movie> _$movieSerializer = new _$MovieSerializer();
Serializer<GenreListResponse> _$genreListResponseSerializer =
    new _$GenreListResponseSerializer();
Serializer<Genre> _$genreSerializer = new _$GenreSerializer();

class _$MovieListResponseSerializer
    implements StructuredSerializer<MovieListResponse> {
  @override
  final Iterable<Type> types = const [MovieListResponse, _$MovieListResponse];
  @override
  final String wireName = 'MovieListResponse';

  @override
  Iterable serialize(Serializers serializers, MovieListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Movie)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
      'dates',
      serializers.serialize(object.dateRange,
          specifiedType: const FullType(DateRange)),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MovieListResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Movie)]))
              as BuiltSet);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dates':
          result.dateRange.replace(serializers.deserialize(value,
              specifiedType: const FullType(DateRange)) as DateRange);
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DateRangeSerializer implements StructuredSerializer<DateRange> {
  @override
  final Iterable<Type> types = const [DateRange, _$DateRange];
  @override
  final String wireName = 'DateRange';

  @override
  Iterable serialize(Serializers serializers, DateRange object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'maximum',
      serializers.serialize(object.maximum,
          specifiedType: const FullType(String)),
      'minimum',
      serializers.serialize(object.minimum,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DateRange deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateRangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'maximum':
          result.maximum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minimum':
          result.minimum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenreListResponseSerializer
    implements StructuredSerializer<GenreListResponse> {
  @override
  final Iterable<Type> types = const [GenreListResponse, _$GenreListResponse];
  @override
  final String wireName = 'GenreListResponse';

  @override
  Iterable serialize(Serializers serializers, GenreListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Genre)])),
    ];

    return result;
  }

  @override
  GenreListResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Genre)]))
              as BuiltSet);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreSerializer implements StructuredSerializer<Genre> {
  @override
  final Iterable<Type> types = const [Genre, _$Genre];
  @override
  final String wireName = 'Genre';

  @override
  Iterable serialize(Serializers serializers, Genre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Genre deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieListResponse extends MovieListResponse {
  @override
  final BuiltSet<Movie> results;
  @override
  final int page;
  @override
  final int totalResults;
  @override
  final DateRange dateRange;
  @override
  final int totalPages;

  factory _$MovieListResponse([void updates(MovieListResponseBuilder b)]) =>
      (new MovieListResponseBuilder()..update(updates)).build();

  _$MovieListResponse._(
      {this.results,
      this.page,
      this.totalResults,
      this.dateRange,
      this.totalPages})
      : super._() {
    if (results == null)
      throw new BuiltValueNullFieldError('MovieListResponse', 'results');
    if (page == null)
      throw new BuiltValueNullFieldError('MovieListResponse', 'page');
    if (totalResults == null)
      throw new BuiltValueNullFieldError('MovieListResponse', 'totalResults');
    if (dateRange == null)
      throw new BuiltValueNullFieldError('MovieListResponse', 'dateRange');
    if (totalPages == null)
      throw new BuiltValueNullFieldError('MovieListResponse', 'totalPages');
  }

  @override
  MovieListResponse rebuild(void updates(MovieListResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieListResponseBuilder toBuilder() =>
      new MovieListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieListResponse &&
        results == other.results &&
        page == other.page &&
        totalResults == other.totalResults &&
        dateRange == other.dateRange &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, results.hashCode), page.hashCode),
                totalResults.hashCode),
            dateRange.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieListResponse')
          ..add('results', results)
          ..add('page', page)
          ..add('totalResults', totalResults)
          ..add('dateRange', dateRange)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class MovieListResponseBuilder
    implements Builder<MovieListResponse, MovieListResponseBuilder> {
  _$MovieListResponse _$v;

  SetBuilder<Movie> _results;
  SetBuilder<Movie> get results => _$this._results ??= new SetBuilder<Movie>();
  set results(SetBuilder<Movie> results) => _$this._results = results;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  DateRangeBuilder _dateRange;
  DateRangeBuilder get dateRange =>
      _$this._dateRange ??= new DateRangeBuilder();
  set dateRange(DateRangeBuilder dateRange) => _$this._dateRange = dateRange;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  MovieListResponseBuilder();

  MovieListResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _page = _$v.page;
      _totalResults = _$v.totalResults;
      _dateRange = _$v.dateRange?.toBuilder();
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieListResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MovieListResponse;
  }

  @override
  void update(void updates(MovieListResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieListResponse build() {
    _$MovieListResponse _$result;
    try {
      _$result = _$v ??
          new _$MovieListResponse._(
              results: results.build(),
              page: page,
              totalResults: totalResults,
              dateRange: dateRange.build(),
              totalPages: totalPages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();

        _$failedField = 'dateRange';
        dateRange.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DateRange extends DateRange {
  @override
  final String maximum;
  @override
  final String minimum;

  factory _$DateRange([void updates(DateRangeBuilder b)]) =>
      (new DateRangeBuilder()..update(updates)).build();

  _$DateRange._({this.maximum, this.minimum}) : super._() {
    if (maximum == null)
      throw new BuiltValueNullFieldError('DateRange', 'maximum');
    if (minimum == null)
      throw new BuiltValueNullFieldError('DateRange', 'minimum');
  }

  @override
  DateRange rebuild(void updates(DateRangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DateRangeBuilder toBuilder() => new DateRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateRange &&
        maximum == other.maximum &&
        minimum == other.minimum;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, maximum.hashCode), minimum.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateRange')
          ..add('maximum', maximum)
          ..add('minimum', minimum))
        .toString();
  }
}

class DateRangeBuilder implements Builder<DateRange, DateRangeBuilder> {
  _$DateRange _$v;

  String _maximum;
  String get maximum => _$this._maximum;
  set maximum(String maximum) => _$this._maximum = maximum;

  String _minimum;
  String get minimum => _$this._minimum;
  set minimum(String minimum) => _$this._minimum = minimum;

  DateRangeBuilder();

  DateRangeBuilder get _$this {
    if (_$v != null) {
      _maximum = _$v.maximum;
      _minimum = _$v.minimum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateRange other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DateRange;
  }

  @override
  void update(void updates(DateRangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DateRange build() {
    final _$result =
        _$v ?? new _$DateRange._(maximum: maximum, minimum: minimum);
    replace(_$result);
    return _$result;
  }
}

class _$Movie extends Movie {
  @override
  final int voteCount;
  @override
  final int id;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final BuiltList<int> genreIds;
  @override
  final String backdropPath;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  final String releaseDate;

  factory _$Movie([void updates(MovieBuilder b)]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.voteCount,
      this.id,
      this.video,
      this.voteAverage,
      this.title,
      this.popularity,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.releaseDate})
      : super._() {
    if (voteCount == null)
      throw new BuiltValueNullFieldError('Movie', 'voteCount');
    if (id == null) throw new BuiltValueNullFieldError('Movie', 'id');
    if (video == null) throw new BuiltValueNullFieldError('Movie', 'video');
    if (voteAverage == null)
      throw new BuiltValueNullFieldError('Movie', 'voteAverage');
    if (title == null) throw new BuiltValueNullFieldError('Movie', 'title');
    if (popularity == null)
      throw new BuiltValueNullFieldError('Movie', 'popularity');
    if (posterPath == null)
      throw new BuiltValueNullFieldError('Movie', 'posterPath');
    if (originalLanguage == null)
      throw new BuiltValueNullFieldError('Movie', 'originalLanguage');
    if (originalTitle == null)
      throw new BuiltValueNullFieldError('Movie', 'originalTitle');
    if (genreIds == null)
      throw new BuiltValueNullFieldError('Movie', 'genreIds');
    if (backdropPath == null)
      throw new BuiltValueNullFieldError('Movie', 'backdropPath');
    if (adult == null) throw new BuiltValueNullFieldError('Movie', 'adult');
    if (overview == null)
      throw new BuiltValueNullFieldError('Movie', 'overview');
    if (releaseDate == null)
      throw new BuiltValueNullFieldError('Movie', 'releaseDate');
  }

  @override
  Movie rebuild(void updates(MovieBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        voteCount == other.voteCount &&
        id == other.id &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        title == other.title &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        genreIds == other.genreIds &&
        backdropPath == other.backdropPath &&
        adult == other.adult &&
        overview == other.overview &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            voteCount.hashCode),
                                                        id.hashCode),
                                                    video.hashCode),
                                                voteAverage.hashCode),
                                            title.hashCode),
                                        popularity.hashCode),
                                    posterPath.hashCode),
                                originalLanguage.hashCode),
                            originalTitle.hashCode),
                        genreIds.hashCode),
                    backdropPath.hashCode),
                adult.hashCode),
            overview.hashCode),
        releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('voteCount', voteCount)
          ..add('id', id)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('title', title)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('genreIds', genreIds)
          ..add('backdropPath', backdropPath)
          ..add('adult', adult)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  ListBuilder<int> _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int> genreIds) => _$this._genreIds = genreIds;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _voteCount = _$v.voteCount;
      _id = _$v.id;
      _video = _$v.video;
      _voteAverage = _$v.voteAverage;
      _title = _$v.title;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _genreIds = _$v.genreIds?.toBuilder();
      _backdropPath = _$v.backdropPath;
      _adult = _$v.adult;
      _overview = _$v.overview;
      _releaseDate = _$v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Movie;
  }

  @override
  void update(void updates(MovieBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              voteCount: voteCount,
              id: id,
              video: video,
              voteAverage: voteAverage,
              title: title,
              popularity: popularity,
              posterPath: posterPath,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              genreIds: genreIds.build(),
              backdropPath: backdropPath,
              adult: adult,
              overview: overview,
              releaseDate: releaseDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GenreListResponse extends GenreListResponse {
  @override
  final BuiltSet<Genre> genres;

  factory _$GenreListResponse([void updates(GenreListResponseBuilder b)]) =>
      (new GenreListResponseBuilder()..update(updates)).build();

  _$GenreListResponse._({this.genres}) : super._() {
    if (genres == null)
      throw new BuiltValueNullFieldError('GenreListResponse', 'genres');
  }

  @override
  GenreListResponse rebuild(void updates(GenreListResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreListResponseBuilder toBuilder() =>
      new GenreListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreListResponse && genres == other.genres;
  }

  @override
  int get hashCode {
    return $jf($jc(0, genres.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreListResponse')
          ..add('genres', genres))
        .toString();
  }
}

class GenreListResponseBuilder
    implements Builder<GenreListResponse, GenreListResponseBuilder> {
  _$GenreListResponse _$v;

  SetBuilder<Genre> _genres;
  SetBuilder<Genre> get genres => _$this._genres ??= new SetBuilder<Genre>();
  set genres(SetBuilder<Genre> genres) => _$this._genres = genres;

  GenreListResponseBuilder();

  GenreListResponseBuilder get _$this {
    if (_$v != null) {
      _genres = _$v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreListResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenreListResponse;
  }

  @override
  void update(void updates(GenreListResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreListResponse build() {
    _$GenreListResponse _$result;
    try {
      _$result = _$v ?? new _$GenreListResponse._(genres: genres.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Genre extends Genre {
  @override
  final int id;
  @override
  final String name;

  factory _$Genre([void updates(GenreBuilder b)]) =>
      (new GenreBuilder()..update(updates)).build();

  _$Genre._({this.id, this.name}) : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Genre', 'id');
    if (name == null) throw new BuiltValueNullFieldError('Genre', 'name');
  }

  @override
  Genre rebuild(void updates(GenreBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreBuilder toBuilder() => new GenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genre && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Genre')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenreBuilder implements Builder<Genre, GenreBuilder> {
  _$Genre _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GenreBuilder();

  GenreBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genre other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Genre;
  }

  @override
  void update(void updates(GenreBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Genre build() {
    final _$result = _$v ?? new _$Genre._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}
