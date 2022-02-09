import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movie_image.dart';

import '../../core/domain/cast.dart';

class CastListTile extends StatelessWidget {
  const CastListTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Cast item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: MovieImage(
              cacheHeight: 400,
              path: item.profilePath,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(item.name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      item.character,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
