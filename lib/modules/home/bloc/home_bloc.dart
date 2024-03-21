import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/modules/home/data/home_repo.dart';
import 'package:weather_app/utils/data_response_model.dart';

import '../model/add_user_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final dataRepo  = HomeRepo();


  HomeBloc() : super(HomeInitial()) {
    on<UserAddEvent>((event, emit) async{
      DoubleResponse dd = await dataRepo.addUser(email: event.email,firstName: event.firstName,lastName: event.lastName);

      if (dd.data1) {
        emit(UserAddedSuccessState());
      } else {
        emit(UserAddedFailState());
      }
    });

    on<UserLoadEvent>((event, emit) async{

      try {

         DoubleResponse response = await dataRepo.getDataFromLocal();

      if (response.data1) {
        print('this');
        print(json.encode(response.data2));
        emit(UserLoadSuccessState(userList: response.data2));
      } else {
        print('else');
        emit(UserLoadFailState());
      }
        
      } catch (e) {
       print('here${e.toString()}');
        
        emit(UserLoadFailState());
      }

      
    });


    on<UserDeleteEvent>((event, emit) async{

      DoubleResponse response = await dataRepo.deleteUser(event.email);

      if (response.data1) {
        emit(UserDeleteSuccessState());
      } else {
        print('else');
        emit(UserDeleteFailState());
      }

      
    });
  }
}
