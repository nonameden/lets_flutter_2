import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final VoidCallback onTap;

  const ErrorView({Key key, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Error has occured"),
        SizedBox(
          height: 16.0,
        ),
        OutlineButton(
          child: Text("Retry"),
          onPressed: onTap,
        ),
      ],
    );
  }
}