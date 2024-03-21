import 'package:flutter/cupertino.dart';

class CoreProvider extends ChangeNotifier{

  bool isCelcius = true;
  switchCelcius(){
  isCelcius = !isCelcius;
  notifyListeners();
  }


  int selectedIndex = 0;
  changeOnboarding(int v){
  selectedIndex =v;
  notifyListeners();
  }

}