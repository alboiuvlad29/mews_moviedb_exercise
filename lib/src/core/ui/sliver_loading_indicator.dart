import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/ui/loading_widget.dart';

class SliverLoadingIndicator extends StatelessWidget {
  const SliverLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: LoadingIndicator(size: 48),
      ),
    );
  }
}
