import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndCondation extends StatelessWidget {
  const TermsAndCondation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [CustomCheckBox(), const Text(AppStrings.termsAndCondition)],
    );
  }
}
