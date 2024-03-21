import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/utils/data_response_model.dart';

import '../model/add_user_model.dart';

class HomeRepo{


  var localUserDataBox = Hive.box('userData');
  var testData = Hive.box('testData');


  
  // List<AddUserModel> userDataList=[];
  List<AddUserModel> userList=[];

  Future<DoubleResponse> addUser({
    required String firstName,
    required String lastName,
    required String email,
  })async{

   try {

       userList.add( AddUserModel(email: email,firstName: firstName,lastName:lastName));

     
     localUserDataBox.put('userData', addUserModelToJson(userList));



    return DoubleResponse(true, 'User Successfully Added');
     
   } catch (e) {
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }


  

   Future<DoubleResponse> getDataFromLocal()async{

   try {

    

   var dd = localUserDataBox.get('userData');

   if (dd!=null) {
     final addUserModel = addUserModelFromJson(localUserDataBox.get('userData'));
     userList = addUserModel;
     return DoubleResponse(true, userList);
   }
   else{
    return DoubleResponse(true, userList);
   }
  //  return DoubleResponse(true, []);
    
     
   } catch (e) {
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }

  Future<DoubleResponse> deleteUser(String email)async{

   try {

   userList.removeWhere((e) => e.email?.toLowerCase()==email.toLowerCase());

   localUserDataBox.put('userData', addUserModelToJson(userList));

   return DoubleResponse(true, 'item deleted');
   } catch (e) {
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }


  clearLocalData(){
  localUserDataBox.clear();
  }

}