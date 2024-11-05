import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/src/auth/presentation/blocs/login/login_bloc.dart';
import 'package:smartapp/src/auth/presentation/screens/login.dart';
import 'package:smartapp/src/home/presentation/screens/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final loginStatus = context.watch<LoginBloc>().state.status;
    
    switch (loginStatus) {
      case LoginStatus.success:
        return HomeScreen();
      default:
        return LoginScreen();
    }
  }
}