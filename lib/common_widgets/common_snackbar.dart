import 'package:flutter/material.dart';
import 'package:weather_app/utils/app_color.dart';

import 'common_text.dart';

class CommonAlert{

   static showSnackBar(BuildContext context,{required String text} ){
  final snackBar = ScaffoldMessenger.of(context);

  snackBar .removeCurrentSnackBar();
  snackBar.showSnackBar(
     SnackBar(
          duration: const Duration(milliseconds: 600),
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          content: CommonText(text: text,
           textAlign: TextAlign.start,)
    ));
 }
}