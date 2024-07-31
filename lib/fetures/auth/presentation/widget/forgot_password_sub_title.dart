import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubtitle extends StatelessWidget {
  const ForgotPasswordSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter your registered email below to receive password reset instruction',
      style: AppTextStylies.poppins400Style12.copyWith(fontSize: 16),
      textAlign: TextAlign.center,
    );
  }
}
