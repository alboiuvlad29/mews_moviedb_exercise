import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/router/app_router.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movie_image.dart';

class MovieItemTile extends StatelessWidget {
  const MovieItemTile({Key? key, required this.item}) : super(key: key);
  final Movie item;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        AutoRouter.of(context).push(MovieDetailsRoute(id: item.id));
      },
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 120,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: MovieImage(
          cacheHeight: 660,
          path: item.posterPath,
          fit: BoxFit.cover,
          imageMissingBuilder: (BuildContext context) => Center(
            child: Text(
              item.title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
