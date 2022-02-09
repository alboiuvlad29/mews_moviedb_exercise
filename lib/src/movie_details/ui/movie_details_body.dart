import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/ui/bottom_sliver_padding.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movie_image.dart';
import 'package:mews_moviedb_exercise/src/movie_details/ui/movie_details_description.dart';
import 'package:mews_moviedb_exercise/src/movie_details/ui/movie_details_recommended_movies.dart';
import 'package:mews_moviedb_exercise/src/movie_details/ui/movie_details_top_billed.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../core/domain/movie.dart';

const Duration _kAnimDuration = Duration(milliseconds: 200);

class MovieDetailsBody extends StatefulWidget {
  const MovieDetailsBody({
    Key? key,
    required this.item,
    required this.credits,
    this.reccomendations = const <Movie>[],
  }) : super(key: key);

  final Movie item;
  final Credits credits;
  final List<Movie> reccomendations;

  @override
  State<MovieDetailsBody> createState() => _MovieDetailsBodyState();
}

class _MovieDetailsBodyState extends State<MovieDetailsBody> {
  Color? _primaryColor;
  bool processingImage = false;

  @override
  Widget build(BuildContext context) {
    final Color color =
        _primaryColor ?? Theme.of(context).appBarTheme.backgroundColor!;
    final Brightness estimatedBrightness =
        ThemeData.estimateBrightnessForColor(color);

    final Color textColor =
        estimatedBrightness == Brightness.dark ? Colors.white : Colors.black;
    final Movie item = widget.item;

    const double imageWidth = 80;
    const double gradientWidth = 200;
    return MultiSliver(
      children: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: color,
          stretch: true,
          iconTheme: IconThemeData(color: textColor),
        ),
        SizedBox(
          height: 280,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _Backdrop(
                imageWidth: imageWidth,
                item: widget.item,
                imageBuilderCallback:
                    (BuildContext context, ImageProvider<Object> image) {
                  if (!processingImage) {
                    processingImage = true;

                    /// Using this library to get the dominant color of the image for a nicer design.
                    /// I would not use this in production due to the UI thread being blocked while the image is being processed.
                    ///
                    /// See: https://github.com/flutter/flutter/issues/28383
                    PaletteGenerator.fromImageProvider(image).then(
                      (PaletteGenerator value) {
                        setState(() {
                          _primaryColor = value.dominantColor?.color;
                        });
                      },
                    );
                  }
                },
              ),
              _Gradient(gradientWidth: gradientWidth, color: color),
              _Poster(widget: widget)
            ],
          ),
        ),
        AnimatedDefaultTextStyle(
            duration: _kAnimDuration,
            style: TextStyle(color: textColor),
            child: MovieDescription(color: color, item: item)),
        TopBilledList(
          credits: widget.credits,
        ),
        RecommendedMovies(recommendations: widget.reccomendations),
        const BottomSliverPadding()
      ],
    );
  }
}

class _Backdrop extends StatelessWidget {
  const _Backdrop({
    Key? key,
    required this.imageWidth,
    required this.item,
    this.imageBuilderCallback,
  }) : super(key: key);

  final double imageWidth;
  final Movie item;
  final void Function(BuildContext, ImageProvider<Object>)?
      imageBuilderCallback;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: imageWidth,
      child: MovieImage(
        path: item.backdropPath,
        imageBuilder: (BuildContext context, ImageProvider image) {
          imageBuilderCallback?.call(context, image);
          return Image(
            image: image,
            fit: BoxFit.cover,
          );
        },
        cacheHeight: 880,
      ),
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient({
    Key? key,
    required this.gradientWidth,
    required this.color,
  }) : super(key: key);

  final double gradientWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      width: gradientWidth,
      child: AnimatedContainer(
        duration: _kAnimDuration,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              color,
              color.withOpacity(0.0),
            ],
            stops: const <double>[0.5, 1.0],
          ),
        ),
      ),
    );
  }
}

class _Poster extends StatelessWidget {
  const _Poster({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final MovieDetailsBody widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SizedBox(
            height: 200,
            width: 120,
            child: MovieImage(
              path: widget.item.posterPath,
              cacheHeight: 480,
            ),
          ),
        ),
      ),
    );
  }
}
