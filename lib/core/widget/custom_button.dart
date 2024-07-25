import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({super.key, required this.text, this.color, this.onpressed});
  final String text;
  final Color? color;
  VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          style: AppTextStylies.poppins500Style18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
