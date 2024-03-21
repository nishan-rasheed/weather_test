import 'package:flutter/cupertino.dart';

class CoreProvider extends ChangeNotifier{

  bool isCelcius = true;
  switchCelcius(){
  isCelcius = !isCelcius;
  notifyListeners();
  }

}