import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/modules/weather/data/weather_repo.dart';

import '../model/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  var weatherRepo = WeatherRepo();

  WeatherBloc() : super(WeatherInitial()) {
    on<GetWeatherEvent>((event, emit) async{

      emit(WeatherLoadingState());

      var response = await weatherRepo.getWeather();

      if (response.data1) {
        log(json.encode(response.data2));
       
        emit(WeatherLoadedState(weatherData: response.data2));
      }
      else{
        print('here');
        emit(WeatherFailState());
      }


      
    });
  }
}
