import 'dart:ui';

import 'package:flutter/material.dart';

const int _kSomeExtend = 220;
const double _kNavBarPersistentHeight = 80;

class MovieDetailsAppBar extends StatelessWidget {
  const MovieDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    return MediaQuery(
      data: _mediaQuery.copyWith(textScaleFactor: 1.0),
      child: SliverPersistentHeader(
        pinned: true,
        delegate: PersistendHeader(
          persistentHeight: _kNavBarPersistentHeight + _mediaQuery.padding.top,
        ),
      ),
    );
  }
}

class PersistendHeader extends SliverPersistentHeaderDelegate {
  PersistendHeader({
    required this.persistentHeight,
  });

  final double persistentHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const double max = _kNavBarPersistentHeight + _kSomeExtend;
    const int min = 0;
    final double current = shrinkOffset;
    final double normalised = ((current - min) / (max - min)).clamp(0, 1);
    final double opacity = lerpDouble(1, 0, normalised)!;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned.fill(
          child: Opacity(
            opacity: 1 - opacity,
            // opacity: 1,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xff292939).withOpacity(0.72),
                    border: const Border(
                        bottom: BorderSide(color: Color(0xff3B3B4B))),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => persistentHeight + _kSomeExtend;

  @override
  double get minExtent => persistentHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
