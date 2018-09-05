import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tmdb_redux_app/interactor.dart';
import 'package:tmdb_redux_app/redux.dart';
import 'package:tmdb_widgets/widgets.dart';

void main() {
  final store = Store<AppState>(appStateReducer, initialState: AppState());
  runApp(new MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> _store;

  MyApp(this._store);

  @override
  Widget build(BuildContext context) {
    return InteractorProvider(
      child: StoreProvider<AppState>(
        store: _store,
        child: new MaterialApp(
          home: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final interactor = InteractorProvider.of(context);
    return StoreBuilder<AppState>(
      onInit: interactor.load,
      builder: (context, store) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Redux sample"),
              bottom: _buildTabBar(context),
            ),
            body: TabBarView(
              children: <Widget>[
                _buildUpcomingTab(context),
                _buildFavouritesTab(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(48.0),
      child: StoreConnector<AppState, int>(
        converter: (store) => store.state.favouriteMovies.length,
        builder: (store, count) => MovieListTabBar(favouritesCount: count),
      ),
    );
  }

  Widget _buildUpcomingTab(BuildContext context) {
    final interactor = InteractorProvider.of(context);
    return StoreBuilder<AppState>(
      builder: (context, store) {
        final state = store.state;
        return MovieListTab(
          isLoading: state.isLoading,
          hasError: state.hasError,
          movies: state.movies,
          onRetry: () => interactor.load(store),
          onTap: (movie) => interactor.addToFavourites(store, movie),
        );
      },
    );
  }

  Widget _buildFavouritesTab(BuildContext context) {
    final interactor = InteractorProvider.of(context);
    return StoreBuilder<AppState>(
      builder: (context, store) {
        final state = store.state;
        return MovieListTab(
          movies: state.favouriteMovies,
          onTap: (movie) => interactor.removeFromFavourites(store, movie),
        );
      },
    );
  }
}
