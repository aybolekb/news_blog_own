import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class SearchBarWidget extends StatelessWidget {
  final bool isEnable;

  const SearchBarWidget({
    super.key,
    this.isEnable = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
          color: appColor.secondaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search_outlined,
            size: 22,
            color: appColor.textColor,
          ),
          const Gap(8),
          Expanded(
              child: TextField(
            enabled: isEnable,
            decoration: const InputDecoration(hintText: 'Gözleg'),
          ))
        ],
      ),
    );
  }
}
