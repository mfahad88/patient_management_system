import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  final double width;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  const LabelTextField({super.key,required this.label,required this.width,required this.keyboardType,required this.onChanged,required this.textInputAction,this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        SizedBox(width: 10.0,),
        SizedBox(
          width: width,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            maxLines: 1,
            textInputAction: textInputAction,
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
