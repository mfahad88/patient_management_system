import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  final double width;
  final TextInputType keyboardType;
  const LabelTextField({super.key,required this.label,required this.width,required this.keyboardType,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        SizedBox(width: 10.0,),
        SizedBox(
          width: width,
          child: TextField(
            keyboardType: keyboardType,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade500,
                  width: 2.0
                )
              )
            ),
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
