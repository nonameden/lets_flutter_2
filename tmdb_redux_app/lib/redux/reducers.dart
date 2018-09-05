import 'package:redux/redux.dart';
import 'package:tmdb_redux_app/redux/actions.dart';
import 'package:tmdb_redux_app/redux/state.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

final appStateReducer = (AppState state, dynamic action) => AppState(
      isLoading: _isLoadingReducer(state.isLoading, action),
      hasError: _hasErrorReducer(state.hasError, action),
      movies: _moviesReducer(state.movies, action),
      favouriteMovies: _favouriteMoviesReducer(state.favouriteMovies, action),
    );

final _isLoadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadingAction>((state, action) => true),
  TypedReducer<bool, LoadSuccessAction>((state, action) => false),
  TypedReducer<bool, LoadFailedAction>((state, action) => false),
]);

final _hasErrorReducer = combineReducers<bool>([
  TypedReducer<bool, LoadingAction>((state, action) => false),
  TypedReducer<bool, LoadFailedAction>((state, action) => true),
]);

final _moviesReducer = combineReducers<Iterable<Movie>>([
  TypedReducer<Iterable<Movie>, LoadSuccessAction>(
      (state, action) => action.movies),
]);

final _favouriteMoviesReducer = combineReducers<Iterable<Movie>>([
  TypedReducer<Iterable<Movie>, AddToFavouriteAction>((state, action) {
    if (state.contains(action.movie)) return state;
    return List.of(state)..add(action.movie);
  }),
  TypedReducer<Iterable<Movie>, RemoveFromFavouriteAction>((state, action) {
    if (!state.contains(action.movie)) return state;
    return List.of(state)..remove(action.movie);
  }),
]);