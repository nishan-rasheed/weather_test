import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/utils/data_response_model.dart';

import '../model/add_user/add_user_model.dart';

class HomeRepo{


  var localUserDataBox = Hive.box('userData');
  var testData = Hive.box('testData');


  
  List<AddUserModel> userDataList=[];

  Future<DoubleResponse> addUser()async{

   try {

       userDataList.add(const AddUserModel(email: 'enaahjh@gmail.com',firstName: 'firster',lastName: 'laster'));

     
     localUserDataBox.put('userData', addUserModelToJson(userDataList));



    return DoubleResponse(true, 'User Successfully Added');
     
   } catch (e) {
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }


  
   Future<DoubleResponse> getDataFromLocal()async{

   try {

    List<AddUserModel> userList=[];

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
    print('gcggcgcgc${e.toString()}');
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }


  clearLocalData(){
  localUserDataBox.clear();
  }

}