part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class UserAddedSuccessState extends HomeState {}
final class UserAddedFailState extends HomeState {}

final class UserLoadSuccessState extends HomeState {
 final List<AddUserModel> userList;

  UserLoadSuccessState({required this.userList});
}
final class UserLoadFailState extends HomeState {}


