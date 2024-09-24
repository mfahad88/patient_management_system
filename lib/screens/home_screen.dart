import 'package:flutter/material.dart';
import 'package:patient_management_system/providers/home_provider.dart';
import 'package:patient_management_system/screens/dashboard_screen.dart';
import 'package:patient_management_system/screens/patient/patient_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider provider=context.watch();
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          print(constraints.maxWidth);
          return Row(
            children: [
              Container(
                width: constraints.maxWidth>800?constraints.maxWidth*0.15:constraints.maxWidth*0.35,
                height: constraints.maxHeight,
                color: Colors.grey.shade100,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  children:  [
                    ListTile(title: Text("Dashboard"),onTap: () => Navigator.of(context).pushNamed('/dashboard'),),
                    const ListTile(title: Text("Appointments"),),
                    ListTile(title: const Text("Patients"),onTap: () => provider.mainNavigation.currentState!.pushReplacementNamed('/patient'),),
                    const ListTile(title: Text("Billing"),),
                    const ListTile(title: Text("Reports"),),
                    const ListTile(title: Text("Settings"),),
                    const ListTile(title: Text("Logout"),)
                  ],
                ),

              ),
              SizedBox(
                width: constraints.maxWidth>800?constraints.maxWidth*0.85:constraints.maxWidth*0.65,
                height: constraints.maxHeight,
                child: Navigator(
                  initialRoute: '/dashboard',
                  key: provider.mainNavigation,
                  onGenerateRoute: (settings) {
                    if(settings.name=='/dashboard'){
                      return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const DashboardScreen(),);
                    }else if(settings.name == '/patient'){
                      return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const PatientScreen(),);
                    }
                    return null;
                  },
                ),
              ),
            ],
          );
        },),
      ),
    );
  }
}
