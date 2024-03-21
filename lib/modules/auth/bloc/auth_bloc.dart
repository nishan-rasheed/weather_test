import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/modules/auth/data/auth_repo.dart';
import 'package:weather_app/utils/data_response_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

 final dataRepo  = AuthRepo();

  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async{
      emit(LoginLoadingState());

       DoubleResponse response = await dataRepo.login(event.userName, event.password);

       if (response.data1) {
         emit(LoginSucessState());
       } else {
         emit(LoginFailState(error:response.data2 ));
       } 
      
    });


    on<CheclLoggedEvent>((event, emit) async{

      emit(UserLoggedLoadingState());

      DoubleResponse dd = await dataRepo.checkLogged();

       if (dd.data1) {
         emit(UserLoggedState());
         if (kDebugMode) {
           print('is logged');
         }
       } else {
         emit(UserNotLoggedState());
       } 
      
    });

     on<LogoutEvent>((event, emit) async{

      DoubleResponse dd = await dataRepo.logout();

       if (dd.data1) {
         emit(UserSignoutSuccessState());
       } else {
         emit(UserSignoutFailState());
       } 
      
    });
  }
}
