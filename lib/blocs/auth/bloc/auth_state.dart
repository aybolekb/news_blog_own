part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  final bool isTermsAccepted;
  final String phoneNumber;
  const AuthState({required this.isTermsAccepted, required this.phoneNumber});

  @override
  List<Object> get props => [isTermsAccepted, phoneNumber];
}

final class AuthInitial extends AuthState {
  const AuthInitial({
    required super.isTermsAccepted,
    required super.phoneNumber,
  });
  @override
  List<Object> get props => [phoneNumber, isTermsAccepted];
}

// class Loading extends AuthState {}

// class LoggedIn extends AuthState {}

// class RegistrationRequired extends AuthState {}

// class OtpVerificationRequired extends AuthState {}

// class AuthenticationFailure extends AuthState {}
