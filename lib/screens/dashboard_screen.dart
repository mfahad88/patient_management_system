import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        return Column(
          children: [
            Container(
              width: constraints.maxWidth>800?constraints.maxWidth*0.15:constraints.maxWidth*0.35,
              height: constraints.maxHeight,
              color: Colors.grey.shade100,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                children: [
                  ListTile(title: Text("Dashboard"),),
                  ListTile(title: Text("Appointments"),),
                  ListTile(title: Text("Patients"),),
                  ListTile(title: Text("Billing"),),
                  ListTile(title: Text("Settings"),)
                ],
              ),
            ),
            Column(
              children: [],
            )
          ],
        );
      },),
    );
  }
}
