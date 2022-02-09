import 'package:flutter/material.dart';

import '../infrastructure/network_failure.dart';

class ErrorRetry extends StatelessWidget {
  const ErrorRetry({
    Key? key,
    this.onRetry,
    required this.error,
  }) : super(key: key);

  final VoidCallback? onRetry;
  final NetworkFailure error;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Something went wrong',
            ),
            Text(
              error.message,
            ),
            if (onRetry != null)
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Try again'),
              )
          ],
        ),
      ),
    );
  }
}
