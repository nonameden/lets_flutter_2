import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:tmdb_scoped_model_app/movies_model.dart';
import 'package:tmdb_widgets/widgets.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: MoviesModel(),
      child: new MaterialApp(
        home: new HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Scoped model sample"),
          bottom: _buildTabBar(context),
        ),
        body: TabBarView(
          children: <Widget>[
            _buildUpcomingTab(context),
            _buildFavouriteTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(48.0),
      child: ScopedModelDescendant<MoviesModel>(
        builder: (context, _, model) {
          return MovieListTabBar(
            favouritesCount: model.favouriteMovies.length,
          );
        },
      ),
    );
  }

  Widget _buildUpcomingTab(BuildContext context) {
    return ScopedModelDescendant<MoviesModel>(
      builder: (context, _, model) {
        return MovieListTab(
          isLoading: model.isLoading,
          hasError: model.hasError,
          movies: model.movies,
          onRetry: model.load,
          onTap: model.addToFavourite,
        );
      },
    );
  }

  Widget _buildFavouriteTab(BuildContext context) {
    return ScopedModelDescendant<MoviesModel>(
      builder: (context, _, model) {
        return MovieListTab(
          movies: model.favouriteMovies,
          onTap: model.removeFromFavourite,
        );
      },
    );
  }
}
