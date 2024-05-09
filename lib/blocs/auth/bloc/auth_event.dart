part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class PhoneTextOnChangedEvent extends AuthEvent {
  final String phone;
  const PhoneTextOnChangedEvent({required this.phone});

  @override
  List<Object> get props => [phone];
}

class OnChangeIsTermsAccepted extends AuthEvent {
  final bool isTermsAccepted;
  const OnChangeIsTermsAccepted({required this.isTermsAccepted});

  @override
  List<Object> get props => [isTermsAccepted];
}
