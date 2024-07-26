import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
          });
        });
  }
}
