import 'package:flutter/material.dart';

const double _kDefaultPaddingOffset = 16.0;

class BottomSliverPadding extends StatelessWidget {
  const BottomSliverPadding({
    Key? key,
    this.bottomPadding = _kDefaultPaddingOffset,
  }) : super(key: key);
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).padding.bottom;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: padding,
      ),
    );
  }
}
