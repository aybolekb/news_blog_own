import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/enums/category_status.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.onTap,
      this.height = 120,
      this.categoryName = '',
      required this.status,
      required this.cardImage,
      this.svgColor = Colors.white});
  final Function() onTap;
  final String categoryName;
  final CategoryStatus status;
  final String cardImage;
  final Color svgColor;
  final int height;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(8),
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: cardBackgroundColor),
      child: Stack(
        children: [
          Text(
            categoryName,
            style: theme.textTheme.labelSmall
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Positioned(
              right: 6,
              bottom: 6,
              child: SvgPicture.asset(
                cardImage,
                height: 46,
              ))
        ],
      ),
    ));
  }

  Color get cardBackgroundColor {
    final appColor = LightColor();
    switch (status) {
      case CategoryStatus.base:
        return LightColor().cardGreen;
      case CategoryStatus.internet:
        return appColor.cardPurpleLight;
      case CategoryStatus.media:
        return appColor.cardPurple;
      case CategoryStatus.public:
        return appColor.cardGreen;
      case CategoryStatus.additional:
        return appColor.cardBlue;
      default:
        return appColor.primaryColor;
    }
  }
}
