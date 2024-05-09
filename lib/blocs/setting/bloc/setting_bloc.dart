import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc()
      : super(
            const SettingInitial(isDark: false, isSystemThemeEnabled: false)) {
    on<SettingEvent>((event, emit) {
      if (event is ChangeThemeEvent) {
        emit(SettingInitial(isDark: event.value, isSystemThemeEnabled: false));
      }

      if (event is ChangeSystemThemeEvent) {
        emit(SettingInitial(isDark: false, isSystemThemeEnabled: event.value));
      }
    });
  }
}
