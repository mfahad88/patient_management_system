import 'package:flutter/material.dart';
import 'package:patient_management_system/screens/patient/add_patient.dart';
import 'package:patient_management_system/screens/patient/patient_list.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AddPatient(),
            Row(
              children: [
                PatientList(),
                PatientList(),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
