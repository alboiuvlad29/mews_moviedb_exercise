import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/ui/headed_list_tile.dart';

import '../domain/movie.dart';
import 'movie_item_tile.dart';

class MoviesHorizontalList extends StatelessWidget {
  const MoviesHorizontalList({
    Key? key,
    required this.title,
    this.smallTitle,
    required this.items,
  }) : super(key: key);
  final String title;
  final String? smallTitle;
  final List<Movie> items;

  @override
  Widget build(BuildContext context) {
    return HeadedListTile(
      title: title,
      smallTitle: smallTitle,
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          itemBuilder: (BuildContext context, int index) {
            return MovieItemTile(item: items[index]);
          },
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
