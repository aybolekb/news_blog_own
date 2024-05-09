import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_own/blocs/auth/bloc/auth_bloc.dart';

import 'package:news_blog_own/config/extensions/navigation.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/constants/constants.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/core/localization/local_keys.g.dart';
import 'package:news_blog_own/core/utils/input_formatters/phone_number_formatter.dart';
import 'package:news_blog_own/core/widgets/primary_button.dart';
import 'package:news_blog_own/core/widgets/themeIcon_widget.dart';
import 'package:news_blog_own/main_navigations/main_navigation.dart';

class ReegisterPage extends StatelessWidget {
  const ReegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    final size = MediaQuery.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final authBlocProvider = BlocProvider.of<AuthBloc>(context);

          if (state is AuthInitial) {
            return Scaffold(
              body: SafeArea(
                  child: Container(
                padding: const EdgeInsets.all(16),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: theme.brightness == Brightness.dark
                        ? DarkColor().gradient
                        : LightColor().gradient),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            context.openLanguageSelectorPage();
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: appColor.backgroundColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(Images.tmFlag),
                                  ),
                                  const Gap(4),
                                  Text(
                                    'Türkmençe',
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  const Gap(4),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        const ThemeIcon()
                      ],
                    ),
                    const Gap(30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Ulgama girmek ucin telefon belginizi girizin',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith()),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: size.size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+993 ',
                            style: theme.textTheme.titleLarge
                                ?.copyWith(color: appColor.primaryColor),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: appColor.primaryColor,
                              keyboardType: TextInputType.phone,
                              style: theme.textTheme.titleLarge
                                  ?.copyWith(color: appColor.primaryColor),
                              inputFormatters: [PhoneNumberFormatter()],
                              decoration: const InputDecoration(),
                              onChanged: (value) {
                                authBlocProvider
                                    .add(PhoneTextOnChangedEvent(phone: value));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: state.isTermsAccepted,
                            onChanged: (value) {
                              authBlocProvider.add(OnChangeIsTermsAccepted(
                                  isTermsAccepted: value!));
                            }),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: LocaleKeys.i_accept.tr(),
                              style: theme.textTheme.titleSmall
                                  ?.copyWith(color: appColor.cardGreen)),
                          TextSpan(
                              text: LocaleKeys.terms_of_use.tr(),
                              style: theme.textTheme.titleSmall)
                        ]))
                      ],
                    ),
                    const Gap(22),
                    PrimaryButton(
                        enabled: state.isTermsAccepted,
                        text: 'Sms kody al',
                        onTap: () {
                          Future.delayed(const Duration(milliseconds: 2000));
                          context.push(MainNavigation());
                        })
                  ],
                ),
              )),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
