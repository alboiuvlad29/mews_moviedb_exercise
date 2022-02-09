import 'dart:ui';

extension ColorExtension on Color {
  /// Darken a color by [percent] amount (100 = black)
  Color darken([int percent = 10]) {
    final Color c = this;
    assert(1 <= percent && percent <= 100);
    final double f = 1 - percent / 100;
    return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
        (c.blue * f).round());
  }
}
