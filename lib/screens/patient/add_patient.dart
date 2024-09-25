import 'package:flutter/material.dart';
import 'package:patient_management_system/models/patient.dart';
import 'package:patient_management_system/providers/home_provider.dart';
import 'package:patient_management_system/providers/patient_provider.dart';
import 'package:patient_management_system/widgets/label_date_picker.dart';
import 'package:patient_management_system/widgets/label_drop_down.dart';
import 'package:patient_management_system/widgets/label_filled_button.dart';
import 'package:patient_management_system/widgets/label_text_field.dart';
import 'package:provider/provider.dart';

class AddPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FocusNode focusNode=FocusNode();
    Patient patient=Patient();
    TextEditingController _controllerName = TextEditingController();
    TextEditingController _controllerContactNo = TextEditingController();

    return Row(
      children: [
        LabelTextField(label: 'Name',width: 200,keyboardType: TextInputType.name, onChanged: (value) => patient.name=value,textInputAction: TextInputAction.next, controller: _controllerName,),
        const SizedBox(width: 10,),
        LabelDatePicker(label: 'Date of Birth', onChanged: (value) => patient.dob=value, width: 150, textInputAction: TextInputAction.next,),
        const SizedBox(width: 10,),
        LabelTextField(label: 'Contact No.',width: 170,keyboardType: TextInputType.number, onChanged: (value) => patient.contactNo=value,textInputAction: TextInputAction.next,controller: _controllerContactNo),
        const SizedBox(width: 10,),
        LabelDropDown(label: 'Gender', width: 100,
          onChanged: (value) {
            patient.selectedGender=value;
          },
        ),
        const SizedBox(width: 10,),
        LabelFilledButton(label: 'Add',
          focusNode: focusNode,
          backgroundColor: Colors.blueGrey.shade500,
          onPressed: () {
            context.read<PatientProvider>().addPatient(patient);
            print(context.read<PatientProvider>().patients);
            _controllerName.clear();
            _controllerContactNo.clear();


          },)
      ],
    );
  }
}
