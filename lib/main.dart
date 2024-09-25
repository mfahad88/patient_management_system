import 'package:flutter/material.dart';
import 'package:patient_management_system/providers/home_provider.dart';
import 'package:patient_management_system/providers/patient_provider.dart';
import 'package:patient_management_system/screens/home_screen.dart';
import 'package:patient_management_system/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  // Hide the main window on startup
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => HomeProvider(),),
            ChangeNotifierProvider(create: (context) => PatientProvider(),),
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
