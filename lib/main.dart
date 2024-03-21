
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common_widgets/core_provider.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/weather/bloc/weather_bloc.dart';
import 'package:weather_app/utils/app_color.dart';
import 'package:weather_app/wrapper_screen.dart';

import 'utils/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();

  await Hive.openBox("userData");
  await Hive.openBox('weatherData');

  Bloc.observer = MyBlocObserver();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc(),),
      BlocProvider(create: (context) => HomeBloc(),),
      BlocProvider(create: (context) => WeatherBloc(),),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context,_) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => CoreProvider(),),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColor.scaffoldBg,
              appBarTheme:const AppBarTheme(
                backgroundColor: AppColor.primaryColor
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
              useMaterial3: false,
            ),
            home: const WrapperScreen()
            //const WrapperScreen()
          ),
        );
      }
    );
  }
}



