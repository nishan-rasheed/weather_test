part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}


final class AuthInitial extends AuthState {}

final class LoginLoadingState extends AuthState {}
final class LoginSucessState extends AuthState {}
final class LoginFailState extends AuthState {}

final class UserLoggedState extends AuthState {}

final class UserNotLoggedState extends AuthState {}


final class UserSignoutSuccessState extends AuthState {}

final class UserSignoutFailState extends AuthState {}


