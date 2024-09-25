import 'package:flutter/material.dart';
import 'package:patient_management_system/models/patient.dart';

class PatientProvider extends ChangeNotifier{
  List<String> gender=['Male', 'Female', 'N/A'];
  List<Patient>? _patients=List.empty(growable: true);

  List<Patient>? get patients => _patients;
  void addPatient(Patient patient){
    patients?.add(patient);
    notifyListeners();
  }
}