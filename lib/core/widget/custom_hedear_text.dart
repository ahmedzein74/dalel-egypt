import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomHedearText extends StatelessWidget {
  const CustomHedearText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStylies.poppins400Style20.copyWith(fontSize: 25),
    );
  }
}
