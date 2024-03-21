import 'package:get_it/get_it.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/weather/bloc/weather_bloc.dart';

import '../common_widgets/core_provider.dart';
final sl = GetIt.instance;

Future<void> diInit() async {
   sl.registerFactory(() => AuthBloc());
   sl.registerFactory(() => HomeBloc());
   sl.registerFactory(() => WeatherBloc());
   sl.registerFactory(() => CoreProvider());
 }