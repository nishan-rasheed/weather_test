import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/modules/auth/bloc/auth_bloc.dart';
import 'package:weather_app/modules/auth/view/login_screen.dart';
import 'package:weather_app/modules/home/bloc/home_bloc.dart';
import 'package:weather_app/modules/home/view/home_screen.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  @override
  void initState() {
    context.read<AuthBloc>().add(CheclLoggedEvent());
    context.read<HomeBloc>().add(UserLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is UserLoggedState) {
          return HomeScreen();
        } 
        else {
          return LoginScreen();
        }
        
      },
    );
  }
}