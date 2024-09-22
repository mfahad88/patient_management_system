import 'package:flutter/material.dart';
import 'package:patient_management_system/screens/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: constraints.maxWidth>800?constraints.maxWidth*0.15:constraints.maxWidth*0.35,
              height: constraints.maxHeight,
              color: Colors.grey.shade100,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                children: const [
                  ListTile(title: Text("Dashboard"),),
                  ListTile(title: Text("Appointments"),),
                  ListTile(title: Text("Patients"),),
                  ListTile(title: Text("Billing"),),
                  ListTile(title: Text("Reports"),),
                  ListTile(title: Text("Settings"),),
                  ListTile(title: Text("Logout"),),
                ],
              ),
            ),
            Navigator(
              initialRoute: '/dashboard',
              onGenerateRoute: (settings) {
                if(settings.name=='/dashboard'){
                  return MaterialPageRoute(builder: (context) => const DashboardScreen(),);
                }
              },
            )
          ],
        );
      },),
    );
  }
}
