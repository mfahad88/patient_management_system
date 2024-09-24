import 'package:flutter/material.dart';
import 'package:patient_management_system/screens/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: constraints.maxWidth>800?constraints.maxWidth*0.15:constraints.maxWidth*0.35,
                  height: constraints.maxHeight,
                  color: Colors.grey.shade100,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    children:  [
                      const ListTile(title: Text("Dashboard"),),
                      const ListTile(title: Text("Appointments"),),
                      ListTile(title: const Text("Patients"),onTap: () => Navigator.pushNamed(context,'/patient'),),
                      const ListTile(title: Text("Billing"),),
                      const ListTile(title: Text("Reports"),),
                      const ListTile(title: Text("Settings"),),
                      const ListTile(title: Text("Logout"),)
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Navigator(
                      initialRoute: '/patient',
                      onGenerateRoute: (settings) {
                        if(settings.name=='/dashboard'){
                          return MaterialPageRoute(builder: (context) => const DashboardScreen(),);
                        }else if(settings.name == '/patient'){
                          return MaterialPageRoute(builder: (context) => const PatientScreen(),);
                        }
                        return null;
                      },
                    ),
                  ),
                )
              ],
            ),

          ],
        );
      },),
    );
  }
}
