import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import 'app_style.dart';
import 'common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,required this.onPressed,
    required this.label,
     this.borderRadius, this.height, this.width, this.isLoading});

  final String label;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final double? height;
  final double? width;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap:(isLoading??false)?(){}: onPressed,
      child: Container(
            width: width??double.infinity,
            height: height??40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(borderRadius??5)
            ),
            child: 
            (isLoading??false)? const Padding(
              padding:  EdgeInsets.all(5),
              child: FittedBox(child: CircularProgressIndicator(color: AppColor.cWhite,),),
            ):
            CommonText(text: label,
            textStyle: AppTextStyles.labelMedium.copyWith(
              color: AppColor.cWhite
            ),
            ),
          ),
    );
    // MaterialButton(
    //   onPressed:
    //    (isLoading??false)?(){}:
    //    onPressed,
    //   splashColor: Colors.black12,
    //   padding:const EdgeInsets.all(0),
    //   shape: RoundedRectangleBorder(
    //     borderRadius:  BorderRadius.circular(borderRadius?? 400.0),
    //   ),
    //   child: Ink(
    //     width:width?? double.infinity,
    //     decoration: BoxDecoration(
    //       color: AppColor.primaryColor,
    //       borderRadius: BorderRadius.circular(borderRadius?? 400.0),
    //     ),
    //     child:
    //     Container(
    //       padding:const EdgeInsets.symmetric(vertical: 3),
    //       height: height,width: width,
    //       // constraints: BoxConstraints(
    //       //     maxWidth: width?? 200.0,
    //       //     minHeight:height?? h/ 18.64 //50.0
    //       // ),
    //       alignment: Alignment.center,
    //       child:(isLoading??false)?const FittedBox(child: CircularProgressIndicator(color: Colors.white,),):
    //         Text(label,style:const TextStyle(color: Colors.white),),
    //     ),
    //   ),
    // );
  }
}