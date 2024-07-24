import 'package:flutter/material.dart';
import 'package:news_blog_own/config/extensions/navigation.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class AppBarCard extends StatelessWidget {
  const AppBarCard({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Row(
      children: [
        IconButton(
            style:
                IconButton.styleFrom(backgroundColor: appColor.secondaryColor),
            onPressed: () {
              context.goBack();
            },
            icon: const Icon(Icons.arrow_back)),
        const Spacer(),
        Text(
          appBarTitle,
          style: theme.textTheme.titleLarge,
        ),
        const Spacer(),
      ],
    );
  }
}
