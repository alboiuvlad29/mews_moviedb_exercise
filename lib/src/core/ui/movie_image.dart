import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

typedef ImageMissingBuilder = Widget Function(BuildContext context);

const String _urlBase = 'https://www.themoviedb.org/t/p/original';
const Duration _kFadeInDuration = Duration(milliseconds: 120);

Widget _kDefaultImageMissingBuilder(BuildContext context) => const SizedBox();

class MovieImage extends StatelessWidget {
  const MovieImage({
    Key? key,
    this.path,
    this.imageMissingBuilder = _kDefaultImageMissingBuilder,
    this.cacheHeight,
    this.cacheWidth,
    this.fit = BoxFit.cover,
    this.imageBuilder,
  }) : super(key: key);
  final String? path;
  final ImageMissingBuilder imageMissingBuilder;
  final int? cacheWidth;
  final int? cacheHeight;
  final BoxFit? fit;
  final ImageWidgetBuilder? imageBuilder;

  @override
  Widget build(BuildContext context) {
    if (path == null) {
      return imageMissingBuilder(context);
    }
    return CachedNetworkImage(
      imageUrl: '$_urlBase$path',
      memCacheHeight: cacheHeight,
      maxHeightDiskCache: cacheHeight,
      memCacheWidth: cacheWidth,
      maxWidthDiskCache: cacheWidth,
      fit: fit,
      imageBuilder: imageBuilder,
      fadeInDuration: _kFadeInDuration,
    );
  }
}
