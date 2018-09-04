import 'package:flutter/material.dart';

const double _kTabHeight = 46.0;

class MovieListTabBar extends StatelessWidget implements  PreferredSizeWidget {
  final int favouritesCount;

  const MovieListTabBar({Key key, this.favouritesCount: 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      Tab(text: "Upcoming"),
    ];

    if (favouritesCount == 0) {
      tabs.add(Tab(text: "Favourite"));
    } else {
      tabs.add(
        Tab(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Favourite",
              ),
              SizedBox(width: 8.0),
              Container(
                width: 24.0,
                height: 24.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Text(favouritesCount.toString()),
              )
            ],
          ),
        ),
      );
    }

    return TabBar(
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_kTabHeight + 2.0);
}
