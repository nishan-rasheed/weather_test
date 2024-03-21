part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoadingState extends WeatherState {}

final class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherData;

  WeatherLoadedState({required this.weatherData});
}

final class WeatherFailState extends WeatherState {}
