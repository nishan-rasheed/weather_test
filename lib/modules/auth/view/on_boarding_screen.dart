// OnBoarding content list
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_variables.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/modules/auth/view/login_screen.dart';

import 'widgets/on_boarding_widget.dart';



// OnBoardingScreen
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Variables
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageIndex < 2) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
      }

      _pageController.animateToPage(
        _pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: AppVariables.demoData.length,
                controller: _pageController,
                itemBuilder: (context, index) => 
                OnBoardContent(
                  title: AppVariables.demoData[index].title,
                  description: AppVariables.demoData[index].description,
                  image: AppVariables.demoData[index].image,
                ),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    AppVariables.demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            cmHeight20,

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: CommonButton(
                borderRadius: 15.r,
                height: 60.h,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  const LoginScreen(),));
                }, 
                label: 'Get Started'),
            ),
            cmHeight10,
          ],
        ),
      ),
    );
  }
}


