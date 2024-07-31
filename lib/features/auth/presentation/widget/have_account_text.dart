import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(text: text1, style: AppTextStylies.poppins400Style16),
            TextSpan(
                text: text2,
                style: AppTextStylies.poppins400Style16
                    .copyWith(color: AppColors.lightGrey)),
          ]),
        ),
      ),
    );
  }
}
