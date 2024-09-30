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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: const Color(0xFF94C4E1),
          secondary: const Color(0xFF1A1A2E),
        ),
        // primaryColor: const Color(0xFF3699DB),
      ),
      home: LoginScreen(),
    );
  }
}