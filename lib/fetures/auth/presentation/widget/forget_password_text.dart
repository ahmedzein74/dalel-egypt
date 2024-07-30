import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ForgetPasswoedTextWidget extends StatelessWidget {
  const ForgetPasswoedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigation(context, 'targetScreen');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: AppTextStylies.poppins600Style24.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
