import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/utils/app_color.dart';

class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 50.h),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(100.r))
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonText(text: title,
          textAlign: TextAlign.center,
          textStyle: AppTextStyles.labelMedium.copyWith(
            fontSize: 30.sp,
            color: AppColor.cWhite
          ),),
          Expanded(
            child: Image.asset(image,
            width: 1.sw,height: 200.h,
            ),
          ),
          
          cmHeight10,
          CommonText(
            textAlign: TextAlign.center,
            text: description,textStyle: AppTextStyles.labelMedium.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: AppColor.borderColor
          ),),
        ],
      ),
    );
  }
}


class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.amber : Colors.white,
        border: isActive ? null : Border.all(color: Colors.amber),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
