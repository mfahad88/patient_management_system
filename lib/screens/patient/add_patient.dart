import 'package:flutter/material.dart';
import 'package:patient_management_system/widgets/label_date_picker.dart';
import 'package:patient_management_system/widgets/label_text_field.dart';

class AddPatient extends StatelessWidget {
  const AddPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LabelTextField(label: 'Name',width: 200,keyboardType: TextInputType.name, onChanged: (value) => print(value),),
        SizedBox(width: 20,),
        LabelDatePicker(label: 'Date of Birth', onChanged: (value) => print(value), width: 150),
        SizedBox(width: 20,),
        LabelTextField(label: 'Contact No.',width: 200,keyboardType: TextInputType.number, onChanged: (value) => print(value),),
      ],
    );
  }
}
