import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

class MovieListTile extends StatelessWidget {
  final Movie _movie;
  final VoidCallback _onTapHandler;

  MovieListTile({@required Movie movie, Function onTap})
      : _movie = movie,
        _onTapHandler = onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapHandler,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1.8,
            child: Image.network(
              'https://image.tmdb.org/t/p/w500${_movie.backdropPath}',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 50.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black87, Colors.transparent],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      _movie.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: 40.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "${_movie.voteAverage.toStringAsFixed(1)}",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
