import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/common_widgets/common_textfield.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/home/data/home_repo.dart';

import '../../../common_widgets/common_text.dart';

class UserAddScreen extends StatelessWidget {
   UserAddScreen({Key? key}) : super(key: key);

  static TextEditingController firstNameCtr = TextEditingController();
  static TextEditingController lastNameCtr = TextEditingController();
  static TextEditingController emailCtr = TextEditingController();


  var homerepo = HomeRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
       // homerepo.clearLocalData();
        homerepo.getDataFromLocal();
      }),
      appBar: AppBar(
        title: const CommonText(text: 'Add User'),),

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 50.h,horizontal: 25.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CommonTextField(hint: 'First Name',
            controller: firstNameCtr,
            ),
            cmHeight10,
            CommonTextField(hint: 'Last Name',
            controller: lastNameCtr,),
            cmHeight10,
            CommonTextField(hint: 'Email',
            controller: emailCtr,),
            cmHeight50,
      
            CommonButton(
              onPressed: (){
                context.read<HomeBloc>().add(UserAddEvent());
                context.read<HomeBloc>().add(UserLoadEvent());
              }, 
              label: 'Save'),

            CommonButton(
              onPressed: (){
                homerepo.clearLocalData();
                context.read<HomeBloc>().add(UserLoadEvent());
              }, 
              label: 'clear'),  
          ],
        ),
      ),  
    );
  }
}