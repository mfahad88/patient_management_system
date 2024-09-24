import 'package:flutter/material.dart';
import 'package:patient_management_system/providers/home_provider.dart';
import 'package:patient_management_system/screens/home_screen.dart';
import 'package:patient_management_system/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => HomeProvider(),)
          ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
