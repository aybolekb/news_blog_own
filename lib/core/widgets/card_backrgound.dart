import 'package:flutter/material.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class CardBackground extends StatelessWidget {
  const CardBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: appColor.secondaryColor),
      child: child,
    );
  }
}
