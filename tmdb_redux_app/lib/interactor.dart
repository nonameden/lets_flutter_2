import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:redux/redux.dart';
import 'package:tmdb_redux_app/redux/actions.dart';
import 'package:tmdb_redux_app/redux/state.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

class MoviesInteractor {
  final _infra = Infrastructure(client: http.Client());

  void load(Store<AppState> store) {
    store.dispatch(LoadingAction());
    _infra.movies
        .listUpcoming()
        .then((list) => store.dispatch(LoadSuccessAction(list)))
        .catchError((_) => store.dispatch(LoadFailedAction()));
  }

  void addToFavourites(Store<AppState> store, Movie movie) {
    store.dispatch(AddToFavouriteAction(movie));
  }

  void removeFromFavourites(Store<AppState> store, Movie movie) {
    store.dispatch(RemoveFromFavouriteAction(movie));
  }
}

class InteractorProvider extends InheritedWidget {
  final interactor = MoviesInteractor();

  InteractorProvider({Widget child}): super(child: child);

  static MoviesInteractor of(BuildContext context) {
    return (context.ancestorWidgetOfExactType(InteractorProvider) as InteractorProvider).interactor;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}