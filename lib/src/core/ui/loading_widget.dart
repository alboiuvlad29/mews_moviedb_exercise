import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/gen/assets.gen.dart';
import 'package:rive/rive.dart';

/// Creates a loading indicator widget to be used throughout the app
///
/// [size] is the size of the loading indicator
///
/// [color] is the color of the loading indicator.
/// If no color has been specified, [Theme.of(context).indicatorColor] will be used.
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.color,
    this.size = 24,
  }) : super(key: key);
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final Color _color = color ?? Theme.of(context).indicatorColor;
    return SizedBox(
      height: size,
      width: size,
      child: Assets.animations.loading.rive(
        onInit: (Artboard artboard) {
          // ignore: always_specify_types
          artboard.forEachComponent((component) {
            if (component is Stroke) {
              component.paint.color = _color;
            }
          });
        },
      ),
    );
  }
}
