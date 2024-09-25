import 'package:flutter/material.dart';

class LabelFilledButton extends StatelessWidget {
  final FocusNode? focusNode;
  final String label;
  final VoidCallback? onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;


  const LabelFilledButton({this.focusNode, required this.label, this.onPressed, this.foregroundColor, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed,
      focusNode: focusNode,
      style: FilledButton.styleFrom(

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor
      ), child: Text(label),);
  }
}
