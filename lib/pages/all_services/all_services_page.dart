import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/core/constants/constants.dart';
import 'package:news_blog_own/core/widgets/app_background.dart';
import 'package:news_blog_own/core/widgets/app_bar.dart';
import 'package:news_blog_own/core/widgets/card_backrgound.dart';
import 'package:news_blog_own/core/widgets/search_bar.dart';
import 'package:news_blog_own/data/model/service_model.dart';
import 'package:news_blog_own/pages/all_services/widget/single_service_card.dart';

class AllServicesPage extends StatefulWidget {
  const AllServicesPage({super.key});

  @override
  State<AllServicesPage> createState() => _AllServicesPageState();
}

class _AllServicesPageState extends State<AllServicesPage> {
  List<ServiceModell> allServicesListt = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var serviceItem in allServicesList) {
      allServicesListt.add(ServiceModell.fromJson(serviceItem));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
        child: ListView(
      children: [
        const AppBarCard(appBarTitle: 'Ähli hyzmatlar'),
        const Gap(20),
        const SearchBarWidget(),
        const Gap(12),
        CardBackground(
            child: Column(
          children: [
            ...List.generate(allServicesListt.length, (index) {
              final serviceItem = allServicesListt[index];
              return SingleServiceCard(
                  title: serviceItem.title,
                  leading: serviceItem.leading,
                  trailing: serviceItem.trailing);
            })
          ],
        ))
      ],
    ));
  }
}
