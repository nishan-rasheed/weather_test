import '../modules/auth/model/on_boarding_model.dart';
import '../utils/app_assets.dart';

class AppVariables {

  static const userInfo = {
    "userName":'thoughtbox@google.com',
    "password":'Test@123456'
  };


  static const apiKey = 'c543e19d7b364809a85141039241803';
  static const location = 'Kochi';

  static  List<OnBoard> demoData = [
  OnBoard(
    image: AppAssets.onB1Img,
    title: "Real-Time Weather Map",
    description: "Watch the progress of the precipitation to stay informed",
  ),
  OnBoard(
    image: AppAssets.onB2Img,
    title: "Weather Around the World",
    description: "Add any location you want and swipe easily to chnage.",
  ),
  OnBoard(
    image: AppAssets.onB3Img,
    title: "Detailed Hourly Forecast",
    description: "Get in - depth weather information.",
  ),
];

}