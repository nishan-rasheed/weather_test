import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/auth/view/on_boarding_screen.dart';
import 'package:weather_app/modules/home/view/home_screen.dart';
import 'package:weather_app/utils/app_color.dart';

class WrapperScreen extends StatelessWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {

        if (state is UserLoggedState) {
          return const HomeScreen();
        } 
        else if(state is UserLoggedLoadingState){
         return const Scaffold( body: Center(child: CupertinoActivityIndicator(color: AppColor.primaryColor,),),);
        }
        else {
          return const OnBoardingScreen();
        }
        
      },
    );
  }
}
