part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent{
    final String userName;
  final String password;

  LoginEvent({required this.userName, required this.password});



}

class CheclLoggedEvent extends AuthEvent{}
