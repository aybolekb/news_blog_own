import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_own/main_navigations/main_navigation_cubit.dart';
import 'package:news_blog_own/pages/card/card_page.dart';
import 'package:news_blog_own/pages/payments/payments_page.dart';
import 'package:news_blog_own/pages/services/services_page.dart';
import 'package:news_blog_own/pages/setting/setting_page.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class MainNavigation extends StatelessWidget {
  MainNavigation({super.key});

  List<Widget> screens = [
    const ServicesPage(),
    const PaymentsPage(),
    const CardPage(),
    const SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return BlocProvider(
        create: (context) => MainNavigationCubit(),
        child: BlocBuilder<MainNavigationCubit, int>(
            builder: (context, selectedIndex) {
          final MainNavigationCubit mainNavigationCubit =
              BlocProvider.of<MainNavigationCubit>(context);
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  mainNavigationCubit.changeIndex(value);
                },
                currentIndex: selectedIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Text(
                        'Ç',
                        style: theme.textTheme.titleLarge?.copyWith(
                            color: selectedIndex == 0
                                ? appColor.primaryColor
                                : AppTheme.greyColor),
                      ),
                      label: 'Hyzmatlar'),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.payments_rounded), label: 'Tölegler'),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.cases_rounded), label: 'Kart'),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Sazlamalar')
                ]),
            body: SafeArea(
                child: Container(
              padding: const EdgeInsets.all(16),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: theme.brightness == Brightness.dark
                      ? DarkColor().gradient
                      : LightColor().gradient),
              child: screens[selectedIndex],
            )),
          );
        }));
  }
}
