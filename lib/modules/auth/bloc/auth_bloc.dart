import 'package:bloc/bloc.dart';
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

       DoubleResponse dd = await dataRepo.login(event.userName, event.password);

       if (dd.data1) {
         print(dd.data2.toString());
         emit(LoginSucessState());
       } else {
         print(dd.data2.toString());
         emit(LoginFailState());
       } 
      
    });


    on<CheclLoggedEvent>((event, emit) async{

      DoubleResponse dd = await dataRepo.checkLogged();

       if (dd.data1) {
         emit(UserLoggedState());
         print('is logged');
       } else {
         emit(UserNotLoggedState());
         print('is not loggedin');
       } 
      
    });
  }
}
