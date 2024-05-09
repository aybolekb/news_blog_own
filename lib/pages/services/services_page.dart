import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/extensions/navigation.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/widgets/search_bar.dart';
import 'package:news_blog_own/pages/all_services/all_services_page.dart';
import 'package:news_blog_own/pages/auth/register_page.dart';
import 'package:news_blog_own/pages/notification/notification_page.dart';
import 'package:news_blog_own/pages/payments/payments_page.dart';
import 'package:news_blog_own/pages/services/widget/last_uses_container.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  bool _isVisible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Visibility(
        visible: _isVisible,
        replacement: Center(
            child: CircularProgressIndicator(
          color: appColor.primaryColor,
          strokeWidth: 1,
        )),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.push(const AllServicesPage());
                    },
                    child: const SearchBarWidget(
                      isEnable: false,
                    ),
                  ),
                ),
                const Gap(12),
                InkWell(
                  onTap: () {
                    context.push(const NotificationPage());
                  },
                  child: Material(
                    color: appColor.secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            SizedBox(
              height: 160,
              child: Material(
                color: appColor.secondaryColor,
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Soňky Ulanylan',
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Gap(8),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              4, (index) => const LastUsesContainer()))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
