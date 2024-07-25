import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.skip,
        style: AppTextStylies.poppins400Style16,
      ),
    );
  }
}
