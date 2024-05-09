part of 'setting_bloc.dart';

class SettingState extends Equatable {
  final bool isDark;
  final bool isSystemThemeEnabled;
  const SettingState(
      {required this.isDark, required this.isSystemThemeEnabled});

  @override
  List<Object> get props => [isDark, isSystemThemeEnabled];

  ThemeMode get themeMode {
    if (isSystemThemeEnabled) {
      return ThemeMode.system;
    } else {
      return isDark ? ThemeMode.dark : ThemeMode.light;
    }
  }
}

class SettingInitial extends SettingState {
  const SettingInitial(
      {required super.isDark, required super.isSystemThemeEnabled});
}
