import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/constants/constants.dart';

class LastUsesContainer extends StatelessWidget {
  final Function() onTap;
  const LastUsesContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: 76,
              width: 76,
              child: Material(
                  borderRadius: BorderRadius.circular(12),
                  color: appColor.cardPurpleLight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              tmcell,
                              height: 30,
                            )),
                      ],
                    ),
                  )),
            ),
            const Gap(8),
            Text(
              'TMCell',
              style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
            )
          ],
        ),
      ),
    );
    // SizedBox(
    //   width: 84,
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 4),
    //         child: SizedBox(
    //           height: 68,
    //           width: 68,
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(12),
    //             child: Image.asset(
    //               'assets/images/tmcell.jpg',

    //             ),
    //           ),
    //         ),
    //       ),
    //       const Gap(4),
    //       Text(
    //         'TMCell',
    //         style: theme.textTheme.labelSmall?.copyWith(
    //             fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    //       )
    //     ],
    //   ),
    // );
  }
}
