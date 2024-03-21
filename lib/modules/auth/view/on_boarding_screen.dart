
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_variables.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/common_widgets/core_provider.dart';
import 'package:weather_app/modules/auth/view/login_screen.dart';

import 'widgets/on_boarding_widget.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    var onBoardValue = Provider.of<CoreProvider>(context,listen: false);
    super.initState();
    _pageController = PageController(initialPage: 0);

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (onBoardValue.selectedIndex < 2) {
        onBoardValue.selectedIndex++;
      } else {
        onBoardValue.selectedIndex = 0;
      }

      _pageController.animateToPage(
        onBoardValue.selectedIndex,
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
        child: Consumer<CoreProvider>(
          builder: (context, onBoardValue, child) => 
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    onBoardValue.changeOnboarding(index);
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
                        padding:  EdgeInsets.only(right: 4.w),
                        child: DotIndicator(
                          isActive: index == onBoardValue.selectedIndex,
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
      ),
    );
  }
}


