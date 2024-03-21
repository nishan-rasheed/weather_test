import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/common_widgets/app_variables.dart';
import 'package:weather_app/utils/data_response_model.dart';

class AuthRepo {

 
 Future<DoubleResponse> login(String userName,String password)async{
   try {

    final SharedPreferences prefs = await SharedPreferences.getInstance();


    if (userName==AppVariables.userInfo['userName']&&password==AppVariables.userInfo['password']) {
      await prefs.setBool('isLoggedIn', true);
      prefs.getBool('isLoggedIn');
      return DoubleResponse(true, 'success');
      

    }else{
      return DoubleResponse(false, 'Credential is wrong');
    }
     
   } catch (e) {

    return DoubleResponse(false, 'Some thing went wrong');
     
   }
 }



 Future<DoubleResponse> checkLogged()async{
   try {

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? isLogged = prefs.getBool('isLoggedIn');



    if (isLogged!=false&&isLogged!=null) {
      return DoubleResponse(true, isLogged);
    
    }else{
      return DoubleResponse(false, false);
    }
     
   } catch (e) {

    return DoubleResponse(false, false);
     
   }
 }


 Future<DoubleResponse> logout()async{
   try {

    final SharedPreferences prefs = await SharedPreferences.getInstance();

   prefs.clear();

     return DoubleResponse(true, 'User logouted');
   } catch (e) {

    return DoubleResponse(false, false);
     
   }
 }


}