part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class UserAddEvent extends HomeEvent{
  final String firstName;
  final String lastName;
  final String email;

  UserAddEvent({required this.firstName, required this.lastName, required this.email});
}

class UserDeleteEvent extends HomeEvent{
   final String email;

  UserDeleteEvent({required this.email});

}

class UserLoadEvent extends HomeEvent{}
