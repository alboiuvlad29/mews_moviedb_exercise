import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/genre.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/ui/color_extension.dart';

const Duration _kAnimDuration = Duration(milliseconds: 200);

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    Key? key,
    required this.color,
    required this.item,
  }) : super(key: key);

  final Color color;
  final Movie item;

  @override
  Widget build(BuildContext context) {
    final List<String> additionalInfo = <String>[
      if (item.formattedReleaseDate != null) item.formattedReleaseDate!,
      if (item.formatterRuntime != null) item.formatterRuntime!,
    ];
    return AnimatedContainer(
      duration: _kAnimDuration,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedContainer(
            duration: _kAnimDuration,
            padding: const EdgeInsets.all(16),
            color: color.darken(10),
            child: Column(
              children: <Widget>[
                if (additionalInfo.isNotEmpty) Text(additionalInfo.join(' • ')),
                Text(
                  item.genres.map((Genre e) => e.name).join(', '),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                if (item.tagline != null && item.tagline?.isNotEmpty == true)
                  Text(
                    item.tagline!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                if (item.overview != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text(
                          'Overview',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.overview!,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
