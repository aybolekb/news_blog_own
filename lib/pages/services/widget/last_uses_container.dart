import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class LastUsesContainer extends StatelessWidget {
  const LastUsesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return SizedBox(
      width: 84,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              height: 74,
              width: double.infinity,
              child: Material(
                color: appColor.cardPurpleLight,
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: Colors.red,
                        height: 10,
                        child: Image.asset(
                          'assets/images/tmcell.jpg',
                          fit: BoxFit.cover,
                          height: 2,
                          width: 2,
                        ),
                      ),
                    )),
              ),
            ),
          ),
          const Gap(4),
          Text(
            'TMCell',
            style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
