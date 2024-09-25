import 'package:flutter/material.dart';
import 'package:patient_management_system/providers/patient_provider.dart';
import 'package:provider/provider.dart';

class LabelDropDown extends StatelessWidget {
  final String label;
  final ValueChanged<String?>? onChanged;
  final double width;

  LabelDropDown({required this.label, this.onChanged, required this.width});

  @override
  Widget build(BuildContext context) {
    PatientProvider provider=context.read();
    onChanged!(provider.gender.first);
    return Row(
      children: [
        Text(label),
        const SizedBox(width: 10.0,),
        SizedBox(
          width: width,
          child:  DropdownButtonFormField<String>(
            value: provider.gender.first,  // Currently selected item
            icon: const Icon(Icons.arrow_downward),  // Dropdown icon
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.black,),  // Styling for the dropdown
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.grey.shade200
                )
              ),
            ),
            onChanged:onChanged,
            items: provider.gender
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        )
      ],
    );
  }
}
