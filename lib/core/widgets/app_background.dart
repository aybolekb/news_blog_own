import 'package:flutter/material.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(16),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: theme.brightness == Brightness.dark
                ? DarkColor().gradient
                : LightColor().gradient),
        child: child,
      )),
    );
  }
}
