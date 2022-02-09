import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/router/app_router.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movie_image.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Movie item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(MovieDetailsRoute(id: item.id)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 180,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _BluredBackdrop(item: item),
                const _BackdropOverlay(),
                _Content(item: item),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(8.0),
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
          const SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (item.formattedReleaseDate != null)
                Text(
                  item.formattedReleaseDate!,
                  style: const TextStyle(fontSize: 12),
                ),
              if (item.overview != null)
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      item.overview!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                )
            ],
          )),
        ],
      ),
    );
  }
}

class _BackdropOverlay extends StatelessWidget {
  const _BackdropOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
    );
  }
}

class _BluredBackdrop extends StatelessWidget {
  const _BluredBackdrop({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: MovieImage(
        cacheHeight: 120,
        path: item.backdropPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
