import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/home/view/user_add_screen.dart';
import 'package:weather_app/modules/home/view/weather_screen.dart';
import 'package:weather_app/utils/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(text: 'User List'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.cWhite,
        foregroundColor: AppColor.primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserAddScreen(),
              ));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is UserLoadSuccessState) {

            return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            itemCount: state.userList.length,
            separatorBuilder: (BuildContext context, int index) {
              return cmHeight15;
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {

                  context.read<HomeBloc>().add(UserLoadEvent());
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const WeatherScreen(),
                  //     ));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: const BoxDecoration(
                      color: AppColor.cWhite,
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.borderColor,
                            spreadRadius: 2,
                            blurRadius: 5)
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: 'First name',
                              textStyle: AppTextStyles.labelMedium.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            cmHeight02,
                            CommonText(text: 'Last name'),
                            cmHeight05,
                            CommonText(text: 'email : kjnhjbjhbj@gmail.com')
                          ],
                        ),
                      ),
                      CupertinoSwitch(value: true, onChanged: (v) {})
                    ],
                  ),
                ),
              );
            },
          );
            
          } else {
             return Column(
               children: [
                CommonButton(onPressed: (){
                  context.read<HomeBloc>().add(UserLoadEvent());
                }, label: 'label'),
                 Text(state.toString()),
               ],
             );
          }
          
        },
      ),
    );
  }
}
