import 'package:flutter/material.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final bool enabled;
  final Function() onTap;
  const PrimaryButton(
      {required this.text,
      super.key,
      this.enabled = true,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    final textColorEnabled = theme.brightness == Brightness.dark
        ? LightColor().primaryColor
        : Colors.white;
    return Material(
      borderRadius: BorderRadius.circular(36),
      color: enabled ? appColor.primaryColor : theme.disabledColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(36),
        onTap: enabled ? onTap : null,
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: Center(
              child: Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
                color: enabled ? textColorEnabled : appColor.passiveTextColor),
          )),
        ),
      ),
    );
  }
}
