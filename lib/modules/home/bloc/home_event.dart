part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class UserAddEvent extends HomeEvent{}

class UserDeleteEvent extends HomeEvent{}

class UserLoadEvent extends HomeEvent{}
