import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final phoneNumberController = TextEditingController();
  AuthBloc()
      : super(const AuthInitial(phoneNumber: '+993', isTermsAccepted: false)) {
    on<AuthEvent>((event, emit) {
      if (event is PhoneTextOnChangedEvent) {
        emit(AuthInitial(
            phoneNumber: event.phone, isTermsAccepted: state.isTermsAccepted));
      }
      if (event is OnChangeIsTermsAccepted) {
        emit(AuthInitial(
            phoneNumber: state.phoneNumber,
            isTermsAccepted: event.isTermsAccepted));
      }
    });
  }
}
