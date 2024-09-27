import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/src/auth/presentation/screens/login.dart';
import 'package:smartapp/global_core/providers/bloc_providers.dart';

void main() {
  // runApp(
  //   MultiBlocProvider(
  //     providers: BlocProviders.get(),
  //     child: const MyApp(),
  //   ),
  // );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}