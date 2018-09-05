import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tmdb_bloc_app/movie_bloc_provider.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';
import 'package:tmdb_widgets/widgets.dart';

void main() {
  final infrastructure = Infrastructure(client: http.Client());
  runApp(new MyApp(infrastructure: infrastructure));
}

class MyApp extends StatelessWidget {

  final Infrastructure infrastructure;

  const MyApp({Key key, @required this.infrastructure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoviesBlocProvider(
      infrastructure: infrastructure,
      child: new MaterialApp(
        home: HomePage(),
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
          title: Text("BLoC sample"),
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
  }

  Widget _buildTabBar(BuildContext context) {
    final bloc = MoviesBlocProvider.of(context);
    return PreferredSize(
      preferredSize: Size.fromHeight(48.0),
          child: StreamBuilder<Iterable<Movie>>(
        stream: bloc.favouriteMovies,
        builder: (context, snapshot) {
          return MovieListTabBar(favouritesCount: snapshot.data?.length ?? 0,);
        },
      ),
    );
  }

  Widget _buildUpcomingTab(BuildContext context) {
    final bloc = MoviesBlocProvider.of(context);
    return StreamBuilder<Iterable<Movie>>(
      stream: bloc.movies,
      builder: (context, snapshot) {
        return MovieListTab(
          isLoading: !snapshot.hasData,
          hasError: snapshot.hasError,
          movies: snapshot.data,
          onRetry: () => bloc.load.add(null),
          onTap: (movie) => bloc.addToFavourites.add(movie),
        );
      },
    );
  }

  Widget _buildFavouritesTab(BuildContext context) {
    final bloc = MoviesBlocProvider.of(context);
    return StreamBuilder<Iterable<Movie>>(
      stream: bloc.favouriteMovies,
      builder: (context, snapshot) {
        return MovieListTab(
          isLoading: false,
          movies: snapshot.data,
          onTap: (movie) => bloc.removeFromFavourites.add(movie),
        );
      },
    );
  }
}
