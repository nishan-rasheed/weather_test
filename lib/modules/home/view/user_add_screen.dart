import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/common_widgets/app_spaces.dart';
import 'package:weather_app/common_widgets/common_button.dart';
import 'package:weather_app/common_widgets/common_textfield.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/home/data/home_repo.dart';

import '../../../common_widgets/common_text.dart';

class UserAddScreen extends StatefulWidget {
  const UserAddScreen({Key? key}) : super(key: key);

  @override
  State<UserAddScreen> createState() => _UserAddScreenState();
}

class _UserAddScreenState extends State<UserAddScreen> {
  var homerepo = HomeRepo();

  final _forkKey = GlobalKey<FormState>();

  static TextEditingController firstNameCtr = TextEditingController();
  static TextEditingController lastNameCtr = TextEditingController();
  static TextEditingController emailCtr = TextEditingController();

  @override
  void initState() {
    clearTextfield();
    super.initState();
  }

  clearTextfield() {
    firstNameCtr.clear();
    lastNameCtr.clear();
    emailCtr.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(text: 'Add User'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
        child: SingleChildScrollView(
          child: Form(
            key: _forkKey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonTextField(
                  validator: (v) {
                    if (v?.isEmpty??false) {
                      return '*Required';
                    }
                    return null;
                  },
                  hint: 'First Name',
                  controller: firstNameCtr,
                ),
                cmHeight10,
                CommonTextField(
                  validator: (v) {
                    if (v?.isEmpty??false) {
                      return '*Required';
                    }
                    return null;
                  },
                  hint: 'Last Name',
                  controller: lastNameCtr,
                ),
                cmHeight10,
                CommonTextField(
                  validator: (v) {
                    if (v?.isEmpty??false) {
                      return '*Required';
                    }
                    return null;
                  },
                  hint: 'Email',
                  controller: emailCtr,
                ),
                cmHeight50,
                BlocListener<HomeBloc, HomeState>(
                  listener: (context, state) {
                    if (state is UserAddedSuccessState) {
                      Navigator.pop(context);
                    }
                  },
                  child: CommonButton(
                      onPressed: () {
                        if (_forkKey.currentState?.validate()??false) {
                           context.read<HomeBloc>().add(UserAddEvent(
                            firstName: firstNameCtr.text,
                            lastName: lastNameCtr.text,
                            email: emailCtr.text));
                            context.read<HomeBloc>().add(UserLoadEvent());
                        }
                      },
                      label: 'Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
