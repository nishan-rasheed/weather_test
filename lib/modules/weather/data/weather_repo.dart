import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/common_widgets/app_variables.dart';

import '../../../utils/data_response_model.dart';
import '../model/weather_model.dart';

class WeatherRepo {

  Dio client = Dio();


  var localWeatherBox = Hive.box('weatherData');



  Future<DoubleResponse> getWeather()async{

   try {

    // if (localWeatherBox.get('weatherData')!=null) {
      
    // } else {

    //   String url = 'http://api.weatherapi.com/v1/current.json?key=${AppVariables.apiKey}&q=${AppVariables.location}&aqi=no';
    //   final response = await client.get(url,);

    //  final weatherModel = weatherModelFromJson(json.encode(response.data));

    // return DoubleResponse(true, weatherModel);
    // }


    String url = 'http://api.weatherapi.com/v1/current.json?key=${AppVariables.apiKey}&q=${AppVariables.location}&aqi=no';
      final response = await client.get(url,);

     final weatherModel = weatherModelFromJson(json.encode(response.data));

    return DoubleResponse(true, weatherModel);



    
     
   } catch (e) {
      return DoubleResponse(false, 'Some thing went wrong');
   }
  
  }
  
}