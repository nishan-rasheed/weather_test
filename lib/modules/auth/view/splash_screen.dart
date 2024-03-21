import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/utils/app_assets.dart';
import 'package:weather_app/utils/app_color.dart';
import 'package:weather_app/wrapper_screen.dart';

import '../../home/bloc/home_bloc.dart';
import '../bloc/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<AuthBloc>().add(CheclLoggedEvent());
    context.read<HomeBloc>().add(UserLoadEvent());
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const WrapperScreen(),),(route) => false,);
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,width: 1.sw,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColor.gradient1, 
                AppColor.gradient2],
            ),
          ),

          child:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.splashImg,
             height: 300.h,
             ),
             CommonText(text: 'Weather',
             textStyle: AppTextStyles.labelMedium.copyWith(
              fontSize: 35.sp,
              fontWeight: FontWeight.w600,
             ),
             ),

             CommonText(text: 'Forecast',
             textStyle: AppTextStyles.labelMedium.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
             ),
             ),
            ],
          )
      ),
    );
  }
}