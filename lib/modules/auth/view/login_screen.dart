import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/home/view/home_screen.dart';
import 'package:weather_app/utils/app_assets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../common_widgets/common_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static TextEditingController userNameCtr = TextEditingController();
  static TextEditingController passWordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.onB3Img,
                width: 200.w,
              ),
              CommonTextField(
                hint: 'Username',
                controller: userNameCtr,
              ),
              cmHeight15,
              CommonTextField(
                hint: 'Password',
                controller: passWordCtr,
              ),
              cmHeight50,
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is LoginSucessState) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  }
                },
                child: CommonButton(
                    width: 100.w,
                    onPressed: () {
                      context.read<AuthBloc>().add(LoginEvent(
                          userName: userNameCtr.text,
                          password: passWordCtr.text));
                      
                    },
                    label: 'Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
