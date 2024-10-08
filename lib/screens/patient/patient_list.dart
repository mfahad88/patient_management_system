import 'package:flutter/material.dart';
import 'package:patient_management_system/providers/patient_provider.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import '../../models/patient.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        DataTable(

            columns: const [
              DataColumn(
                  label: Expanded(
                    child: Text('S.No'),
                  )
              ),
              DataColumn(
                  label: Expanded(
                    child: Text('Name'),
                  )
              ),
              DataColumn(
                  label: Expanded(
                    child: Text('Date of Birth'),
                  )
              ),
              DataColumn(
                  label: Expanded(
                    child: Text('Contact No.'),
                  )
              ),
              DataColumn(
                  label: Expanded(
                    child: Text('Gender'),
                  )
              ),
              DataColumn(
                  label: Expanded(
                    child: Text('Actions'),
                  )
              )
            ],
            rows: context.watch<PatientProvider>().patients!.asMap().entries.map((entry) {
              int index = entry.key+1;
              Patient item = entry.value;
              return DataRow(cells: <DataCell>[
                DataCell(Text(index.toString())),
                DataCell(Text(item.name!)),
                DataCell(Text(item.dob!)), // Age is an int, convert to string
                DataCell(Text(item.contactNo!)),
                DataCell(Text(item.selectedGender!)),
                DataCell(
                  IconButton(onPressed: () => print("Delete"), icon: Icon(Icons.delete,color: Colors.red.shade500,)),
                )
              ]);
            },).toList()
        ),
      ],
    );
  }

  void openNewWindow() async {
    WindowOptions windowOptions = WindowOptions(
      title: 'New Window',
      size: Size(400, 300),
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
}
