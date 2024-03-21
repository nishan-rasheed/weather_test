import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/app_style.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/common_widgets/common_text.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/home/view/user_add_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:weather_app/utils/app_color.dart';
import 'package:weather_app/wrapper_screen.dart';

import '../../weather/view/weather_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const CommonText(text: 'User List'),
      ),
      bottomNavigationBar: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UserSignoutSuccessState) {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const WrapperScreen(),), (route) => false);
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CommonButton(width: 100, onPressed: () {
                context.read<AuthBloc>().add(LogoutEvent());
              }, label: 'Logout'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.cWhite,
        foregroundColor: AppColor.primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserAddScreen(),
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              itemCount: state.userList.length,
              separatorBuilder: (BuildContext context, int index) {
                return cmHeight15;
              },
              itemBuilder: (BuildContext context, int index) {
                var item = state.userList[index];
                return Slidable(
                  endActionPane:
                      ActionPane(motion: const ScrollMotion(), children: [
                    SlidableAction(
                      onPressed: (v) {
                        context
                            .read<HomeBloc>()
                            .add(UserDeleteEvent(email: item.email ?? ''));
                        context.read<HomeBloc>().add(UserLoadEvent());
                      },
                      backgroundColor: const Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ]),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WeatherScreen(),
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.cWhite,
                          boxShadow: const [
                            BoxShadow(
                                color: AppColor.borderColor,
                                spreadRadius: 2,
                                blurRadius: 5)
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColor.primaryColor,
                            child: Icon(Icons.person),
                          ),
                          cmWidth10,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(
                                  text: 'First name: ${item.firstName}',
                                  textStyle: AppTextStyles.labelMedium.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                cmHeight02,
                                CommonText(text: 'Last name: ${item.lastName}'),
                                cmHeight05,
                                CommonText(text: 'email : ${item.email}')
                              ],
                            ),
                          ),
                          // CupertinoSwitch(value: true, onChanged: (v) {})
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Column(
              children: [
                CommonButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(UserLoadEvent());
                    },
                    label: 'label'),
                Text(state.toString()),
              ],
            );
          }
        },
      ),
    );
  }
}
