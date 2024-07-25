import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: const Text(
          AppStrings.skip,
          style: AppTextStylies.poppins400Style16,
        ),
      ),
    );
  }
}
