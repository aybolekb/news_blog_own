import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/extensions/navigation.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/constants/constants.dart';
import 'package:news_blog_own/core/enums/category_status.dart';
import 'package:news_blog_own/core/widgets/category_card.dart';
import 'package:news_blog_own/core/widgets/search_bar.dart';
import 'package:news_blog_own/pages/all_services/all_services_page.dart';

import 'package:news_blog_own/pages/notification/notification_page.dart';

import 'package:news_blog_own/pages/services/widget/last_uses_container.dart';
import 'package:news_blog_own/pages/services/widget/text_widget.dart';

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
            Material(
              color: appColor.secondaryColor,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
                        children: [
                          LastUsesContainer(onTap: () {
                            context.openPaymentCard();
                          }),
                          LastUsesContainer(onTap: () {
                            context.openAllServicesPage();
                          }),
                          LastUsesContainer(onTap: () {
                            context.openAllServicesPage();
                          }),
                          LastUsesContainer(onTap: () {
                            context.openAllServicesPage();
                          }),
                        ]),
                  ],
                ),
              ),
            ),
            const Gap(10),
            const TextWidget(text: 'Esasy'),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'PÝGG',
                    status: CategoryStatus.base,
                    cardImage: policeCar),
                const Gap(12),
                CategoryCard(
                  onTap: () {},
                  categoryName: 'Howa ýollary',
                  status: CategoryStatus.base,
                  cardImage: plane,
                  svgColor: DarkColor().primaryColor,
                ),
              ],
            ),
            const Gap(20),
            const TextWidget(text: 'Internet we telefon'),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'TMCell',
                    status: CategoryStatus.internet,
                    cardImage: music),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'AŞTU Telefon',
                    status: CategoryStatus.internet,
                    cardImage: phoneOut),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Telekom Telefon',
                    status: CategoryStatus.internet,
                    cardImage: phoneOne),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'AŞTU Internet',
                    status: CategoryStatus.internet,
                    cardImage: wifiRoute),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Telekom Internet',
                    status: CategoryStatus.internet,
                    cardImage: wifiSignal),
              ],
            ),
            const Gap(20),
            const TextWidget(text: 'Mediýa we güýmenje'),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                  onTap: () {},
                  categoryName: 'Belet Film',
                  status: CategoryStatus.media,
                  cardImage: movie,
                  svgColor: DarkColor().primaryColor,
                ),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'AŞTU IPTV',
                    status: CategoryStatus.media,
                    cardImage: wifirepo2),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Kabel TV',
                    status: CategoryStatus.media,
                    cardImage: wireless),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Älem TV',
                    status: CategoryStatus.media,
                    cardImage: wifiSignal),
                const Gap(12),
                CategoryCard(
                  onTap: () {},
                  categoryName: 'Aýdym.com',
                  status: CategoryStatus.media,
                  cardImage: music,
                ),
              ],
            ),
            const Gap(20),
            const TextWidget(text: 'Hojalyk we jemagat hyzmatlary'),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Agyz suw tölegi',
                    status: CategoryStatus.public,
                    cardImage: waterTap),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Jaý-jemagat hyzmat tölegi',
                    status: CategoryStatus.public,
                    cardImage: building),
              ],
            ),
            const Gap(20),
            const TextWidget(text: 'Goşmaça hyzmatlary'),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Türkmenpoçta',
                    status: CategoryStatus.additional,
                    cardImage: mail),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'Bölümler',
                    status: CategoryStatus.additional,
                    cardImage: mail),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                CategoryCard(
                    onTap: () {},
                    categoryName: 'TmCell USSD kodlary',
                    status: CategoryStatus.additional,
                    cardImage: music),
                const Gap(12),
                CategoryCard(
                    onTap: () {},
                    categoryName: 'ÇaparPay-Çat',
                    status: CategoryStatus.additional,
                    cardImage: music),
              ],
            ),
          ],
        ));
  }
}
