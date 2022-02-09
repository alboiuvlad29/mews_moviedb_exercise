import 'package:flutter/material.dart';

class HeadedListTile extends StatelessWidget {
  const HeadedListTile({
    Key? key,
    required this.title,
    this.smallTitle,
    required this.child,
  }) : super(key: key);
  final String title;
  final String? smallTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = Theme.of(context).textTheme.headline5!;
    final TextStyle _boldStyle =
        _textStyle.copyWith(fontWeight: FontWeight.w900);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: title,
                    style: _boldStyle,
                  ),
                  if (smallTitle != null)
                    TextSpan(
                      text: ' $smallTitle',
                    ),
                ],
              ),
              style: _textStyle,
            ),
          ),
          const SizedBox(height: 12.0),
          child,
        ]);
  }
}
