import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartapp/global_core/locator.dart';
import 'package:smartapp/src/auth/presentation/screens/login.dart';
import 'package:smartapp/global_core/providers/bloc_providers.dart';

import 'global_core/hive_service/hive_boxes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveBoxes().registerAdapters();
  await setupLocator();
  runApp(
    MultiBlocProvider(
      providers: BlocProviders.get(),
      child: const MyApp(),
    ),
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
      ),
      home: LoginScreen(),
    );
  }
}