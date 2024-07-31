import 'package:dalel_egypt/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocProvider.of<AuthCubit>(context)
                .termsAndCondationCheckBox(newValue: newValue);
          });
        });
  }
}
