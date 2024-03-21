import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/common_widgets/core_provider.dart';
import 'package:weather_app/modules/weather/bloc/weather_bloc.dart';
import 'package:weather_app/utils/app_assets.dart';
import 'package:weather_app/utils/app_color.dart';
import 'package:weather_app/utils/date_methods.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  @override
  void initState() {
    context.read<WeatherBloc>().add(GetWeatherEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Consumer<CoreProvider>(
          builder: (context, coreValue, child) =>
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CommonText(text: coreValue.isCelcius?'Celciis':'Fahrenheit'),
              cmWidth05,
              CupertinoSwitch(
                value: coreValue.isCelcius, onChanged: (v){
                coreValue.switchCelcius();
              }),
              
            ],
          ),
        ),
        // actions: [
        //   CommonText(text: 'Celciis')
        // ],
      ),
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoadedState) {
              return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                children: [
                  CommonText(
                    text: 'Kochi - Kerala',
                    textStyle: AppTextStyles.labelLarge
                        .copyWith(color: AppColor.cWhite),
                  ),

                  cmHeight05,

                  CommonText(
                    text: DateMethods.formatDate(state.weatherData.location?.localtime??''),
                    textStyle: AppTextStyles.labelMedium
                        .copyWith(color: AppColor.cWhite),
                  ),

                  cmHeight30,

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 62, 64, 75)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                                            AppAssets.weathImg,
                                          ),
                        ),
                        cmWidth10,
                    Expanded(
                      child: Consumer<CoreProvider>(
                        builder: (context, coreValue, child) => 
                        CommonText(
                          text: coreValue.isCelcius?
                          '${state.weatherData.current?.temp_c}\u00B0 C':
                          '${state.weatherData.current?.temp_f}\u00B0 F',
                          textStyle: AppTextStyles.labelMedium
                              .copyWith(fontSize: 40.sp, color: AppColor.cWhite),
                        ),
                      ),
                    ),
                      ],
                    ),
                  ),

                  cmHeight30,

                  CommonText(
                    text: 'Weather Condition : ${state.weatherData.current?.condition?.text}',
                    textStyle: AppTextStyles.labelMedium
                        .copyWith(color: AppColor.cWhite,
                        fontSize: 18.sp
                        ),
                  ),

                  const Spacer(),
                   Align(
                    alignment: Alignment.centerLeft,
                     child: CommonText(
                      text: 'More Weather Details',
                      textStyle: AppTextStyles.labelMedium
                          .copyWith(color: AppColor.borderColor,
                          fontSize: 18.sp
                          ),
                                     ),
                   ),
                   cmHeight10,
                  Container(
                    alignment: Alignment.center,
                    width: 1.sw,
                    height: 200.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 62, 64, 75)),
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        WeatherTileWidget(
                          icon: Icons.water_drop_outlined,
                          text: 'Humidity',
                          count: (state.weatherData.current?.humidity??0).toString(),
                        ),
                        WeatherTileWidget(
                          icon: Icons.wind_power_outlined,
                          text: 'Wind',
                          count:'${state.weatherData.current?.wind_kph??0} Kmh' ,
                        ),
                      ],
                    ),
                  ),
                  cmHeight25,
                ],
              ),
            );
            } else {
              
              return const Center(child: CupertinoActivityIndicator(color: AppColor.cWhite,));
            }
            
          },
        ),
      ),
    );
  }
}

class WeatherTileWidget extends StatelessWidget {
  const WeatherTileWidget({
    super.key,
    required this.text,
    required this.icon, required this.count,
  });

  final String text;
  final String count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,color: AppColor.cWhite,
        size: 30.w,),
        cmHeight10,
        CommonText(text: text,
        textStyle: AppTextStyles.labelMedium.copyWith(
          color: AppColor.cWhite
        ),
        ),
        cmHeight10,
        CommonText(text: count,
        textStyle: AppTextStyles.labelMedium.copyWith(
          color: AppColor.cWhite
        ),
        ),
      ],
    );
  }
}
