import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.onFieldSubmitted});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, right: 8, left: 8),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
            labelText: labelText,
            labelStyle: AppTextStylies.poppins500Style18),
      ),
    );
  }

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.deepGrey));
  }
}
