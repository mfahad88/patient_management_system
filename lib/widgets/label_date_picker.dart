import 'package:flutter/material.dart';

class LabelDatePicker extends StatelessWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  final double width;
  final TextInputAction textInputAction;
  final TextEditingController _controller = TextEditingController();
  LabelDatePicker({super.key,required this.label,required this.onChanged,required this.width, required this.textInputAction});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text(label),
        SizedBox(width: 10.0,),
        SizedBox(
          width: width,
          child: TextField(
            textInputAction: textInputAction,
            controller: _controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2.0
                    )
                )
            ),
            onChanged: (value) {
              onChanged!(value);
            },
            onTap: () {
            _selectDate(context);
            },
          ),
        )
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:DateTime(DateTime.now().year - 20), // The default date
      firstDate: DateTime(1800), // Earliest date allowed
      lastDate: DateTime(DateTime.now().year), // Latest date allowed
    );
    if (picked != null ) {
        onChanged!('${picked.day < 10 ?'0${picked.day}':picked.day}/${picked.month < 10 ?'0${picked.month}':picked.month}/${picked.year}');
        _controller.text = '${picked.day < 10 ?'0${picked.day}':picked.day}/${picked.month < 10 ?'0${picked.month}':picked.month}/${picked.year}';
    }
  }
}
