import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/ui/loading_widget.dart';

import '../../../gen/assets.gen.dart';

const int _kSomeExtend = 100;
const double _kNavBarPersistentHeight = 80;

Widget _kDefaultNavBuilder(BuildContext context, double animation) =>
    CustomSearchBar(animation: animation);

class MoviesSearchAppBar extends StatelessWidget {
  const MoviesSearchAppBar({
    Key? key,
    this.persistentOnly = false,
    this.navBuilder = _kDefaultNavBuilder,
  }) : super(key: key);
  final bool persistentOnly;
  final PersistentNavBarBuilder navBuilder;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);

    return MediaQuery(
      data: _mediaQuery.copyWith(textScaleFactor: 1.0),
      child: SliverPersistentHeader(
        pinned: true,
        delegate: PersistendHeader(
          persistentOnly: persistentOnly,
          persistentHeight: _kNavBarPersistentHeight + _mediaQuery.padding.top,
          fadeBarBuilder: (BuildContext context, double animation) =>
              const _Logo(),
          navBuilder: navBuilder,
        ),
      ),
    );
  }
}

const double _kIconSize = 24.0;

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
    this.animation = 0.0,
    this.enabled,
    this.onCancel,
    this.loading = false,
    this.autofocus = false,
    this.onChange,
  })  : assert(animation >= 0.0 && animation <= 1.0),
        super(key: key);

  final double animation;
  final VoidCallback? onCancel;
  final bool? enabled;
  final bool loading;
  final bool autofocus;
  final Function(String value)? onChange;

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = EdgeInsets.lerp(
      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      animation,
    )!;
    final Border border = Border.lerp(
      Border.all(color: const Color(0xffACACD1)),
      const Border(),
      animation,
    )!;
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff3B3B4B).withOpacity(0.8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    if (!loading)
                      const Icon(
                        Icons.search,
                        size: _kIconSize,
                      )
                    else
                      const LoadingIndicator(
                        size: _kIconSize,
                      ),
                    Expanded(
                      child: TextField(
                        enabled: enabled,
                        autofocus: autofocus,
                        onChanged: onChange,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (onCancel != null)
            GestureDetector(
              onTap: onCancel,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Text('Cancel'),
                ),
              ),
            )
        ],
      ),
    );
  }
}

typedef PersistentNavBarBuilder = Widget Function(
  BuildContext context,
  double animation,
);
typedef FadeBarBuilder = Widget Function(
  BuildContext context,
  double animation,
);

class PersistendHeader extends SliverPersistentHeaderDelegate {
  PersistendHeader({
    required this.persistentHeight,
    required this.navBuilder,
    required this.fadeBarBuilder,
    this.persistentOnly = false,
  });

  final double persistentHeight;
  final PersistentNavBarBuilder navBuilder;
  final FadeBarBuilder fadeBarBuilder;
  final bool persistentOnly;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const double max = _kNavBarPersistentHeight + 40;
    const int min = 0;
    final double current = shrinkOffset;
    final double normalised =
        persistentOnly ? 1 : ((current - min) / (max - min)).clamp(0, 1);

    final double height = lerpDouble(
      _kNavBarPersistentHeight,
      _kNavBarPersistentHeight - 10,
      normalised,
    )!;

    final double opacity = lerpDouble(1, 0, normalised)!;

    return Hero(
      tag: '<PersistendHeader><PersistendHeader/>',
      transitionOnUserGestures: true,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 1 - opacity,
                child: const _BackdropBlur(),
              ),
            ),
            Positioned.fill(
              child: OverflowBox(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 20 + height,
                  ),
                  child: Opacity(
                    opacity: opacity,
                    child: fadeBarBuilder(context, normalised),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: height,
              child: navBuilder(context, normalised),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent =>
      persistentHeight + (persistentOnly ? 0 : _kSomeExtend);

  @override
  double get minExtent => persistentHeight;

  @override
  bool shouldRebuild(covariant PersistendHeader oldDelegate) {
    return persistentOnly != oldDelegate.persistentOnly ||
        persistentHeight != oldDelegate.persistentHeight ||
        navBuilder != oldDelegate.navBuilder ||
        fadeBarBuilder != oldDelegate.fadeBarBuilder;
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ShaderMask(
          shaderCallback: (Rect bounds) => const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xffACACD1),
              Color(0xff787891),
            ],
          ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height)),
          child: Assets.images.svg.tmdbLogo.svg(color: Colors.white),
        ),
      ],
    );
  }
}

class _BackdropBlur extends StatelessWidget {
  const _BackdropBlur({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xff292939).withOpacity(0.72),
            border: const Border(bottom: BorderSide(color: Color(0xff3B3B4B))),
          ),
        ),
      ),
    );
  }
}
