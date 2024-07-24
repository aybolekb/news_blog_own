import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/widgets/card_backrgound.dart';

class YourBalance extends StatelessWidget {
  const YourBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return CardBackground(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Siziň balansyňyz',
              style: theme.textTheme.bodyLarge,
            ),
            const Gap(8),
            Text(
              '0.9 TMT',
              style: theme.textTheme.titleLarge?.copyWith(fontSize: 30),
            )
          ],
        ),
        Icon(
          Icons.edit_outlined,
          color: AppTheme.greyColor,
          size: 30,
        )
      ],
    ));
  }
}
