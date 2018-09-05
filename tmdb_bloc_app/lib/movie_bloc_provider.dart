import 'package:flutter/material.dart';
import 'package:tmdb_bloc_app/movies_bloc.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

class MoviesBlocProvider extends StatefulWidget {
  final Infrastructure infrastructure;
  final Widget child;

  const MoviesBlocProvider({
    Key key,
    @required this.infrastructure,
    @required this.child,
  }) : super(key: key);

  static MoviesBloc of(BuildContext context) {
    return (context.ancestorWidgetOfExactType(_MoviesBlocProvider)
            as _MoviesBlocProvider)
        .bloc;
  }

  @override
  _MoviesBlocProviderState createState() => _MoviesBlocProviderState();
}

class _MoviesBlocProviderState extends State<MoviesBlocProvider> {
  MoviesBloc bloc;

  @override
  Widget build(BuildContext context) {
    return _MoviesBlocProvider(
      bloc: bloc,
      child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();
    if (bloc == null) {
      bloc = MoviesBloc(widget.infrastructure);
    }
    bloc.load.add(null);
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}

class _MoviesBlocProvider extends InheritedWidget {
  final MoviesBloc bloc;

  _MoviesBlocProvider({this.bloc, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}