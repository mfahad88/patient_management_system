import 'package:flutter/material.dart';
import 'package:patient_management_system/screens/patient/add_patient.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        AddPatient()
      ],
    );
  }
}
