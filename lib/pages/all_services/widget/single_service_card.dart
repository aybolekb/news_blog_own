import 'package:flutter/material.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class SingleServiceCard extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  const SingleServiceCard(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: theme.textTheme.bodySmall,
          ),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: appColor.primaryColor,
                borderRadius: BorderRadius.circular(36)),
            child: Icon(
              leading,
              color: appColor.backgroundColor,
            ),
          ),
          trailing: Icon(
            trailing,
            color: AppTheme.greyColor,
            size: 16,
          ),
        ),
        const Divider()
      ],
    );
  }
}
