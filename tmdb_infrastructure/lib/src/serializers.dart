library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tmdb_infrastructure/src/models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  MovieListResponse,
  DateRange,
  Movie,
  GenreListResponse,
  Genre,
])
final Serializers _serializers = _$_serializers;
final Serializers serializers =
    (_serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
