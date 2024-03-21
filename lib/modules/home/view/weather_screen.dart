import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/utils/app_assets.dart';
import 'package:weather_app/utils/app_color.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
          child: Column(
            children: [
            CommonText(text: 'Kochi - Kerala',
            textStyle: AppTextStyles.labelLarge.copyWith(
              color: AppColor.cWhite
            ),
            ),
            Image.asset(AppAssets.splashImg, ),
          
            CommonText(text: '19 degree',
            textStyle: AppTextStyles.labelMedium.copyWith(
              fontSize: 30,
              color: AppColor.cWhite
            ),
            ),


            const Spacer(),
        
            Container(
              alignment: Alignment.center,
              width: 1.sw,
              height: 200.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const  Color.fromARGB(255, 62, 64, 75)
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherTileWidget(icon: Icons.home,text: 'Humidity',),
                  WeatherTileWidget(icon: Icons.tab,text: 'Wind',),
                ],
              ),
            ),
             cmHeight25,

            ],
          ),
        ),
      ),
      
    );
  }
}

class WeatherTileWidget extends StatelessWidget {
  const WeatherTileWidget({
    super.key, required this.text, required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        CommonText(text: text),
      ],
    );
  }
}