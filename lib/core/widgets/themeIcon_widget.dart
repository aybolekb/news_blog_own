import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_own/blocs/setting/bloc/setting_bloc.dart';
import 'package:news_blog_own/config/theme/theme.dart';

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        final settingBlocProvider = BlocProvider.of<SettingBloc>(context);
        final appColor = state.isDark ? DarkColor() : LightColor();
        return IconButton(
            style: IconButton.styleFrom(
              backgroundColor: appColor.backgroundColor,
            ),
            onPressed: () {
              settingBlocProvider.add(ChangeThemeEvent(value: !state.isDark));
            },
            icon: Icon(
              state.isDark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ));
      },
    );
  }
}
