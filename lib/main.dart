import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_blog_own/blocs/auth/bloc/auth_bloc.dart';
import 'package:news_blog_own/blocs/setting/bloc/setting_bloc.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/localization/codegen_loader.g.dart';
import 'package:news_blog_own/pages/auth/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:turkmen_localization_support/turkmen_localization_support.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      assetLoader: const CodegenLoader(),
      supportedLocales: const [Locale('en'), Locale('ru'), Locale('tk')],
      path: 'assets/translations',
      fallbackLocale: const Locale('tk'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiBlocProvider(
        providers: [
          BlocProvider<SettingBloc>(
            create: (context) => SettingBloc(),
          ),
        ],
        child: BlocBuilder<SettingBloc, SettingState>(
          builder: (context, state) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  ...context.localizationDelegates,
                  TkCupertinoLocalization.delegate,
                  TkMaterialLocalization.delegate,
                ],
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                title: 'News Blog',
                theme: AppTheme.lightTheme(),
                darkTheme: AppTheme.darkTheme(),
                themeMode: state.themeMode,
                home: const ReegisterPage());
          },
        ));
  }
}
