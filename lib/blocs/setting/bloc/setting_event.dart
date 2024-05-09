part of 'setting_bloc.dart';

sealed class SettingEvent extends Equatable {
  const SettingEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends SettingEvent {
  final bool value;

  const ChangeThemeEvent({required this.value});

  @override
  List<Object> get props => [value];
}

class ChangeSystemThemeEvent extends SettingEvent {
  final bool value;
  const ChangeSystemThemeEvent({required this.value});

  @override
  List<Object> get props => [value];
}
