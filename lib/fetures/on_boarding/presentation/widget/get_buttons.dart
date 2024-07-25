import 'package:dalel_egypt/core/function/app_functions.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_in.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_up.dart';
import 'package:dalel_egypt/fetures/on_boarding/data/Models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1
        ? Column(
            children: [
              CustomBtn(
                onpressed: () {
                  customReplacementNavigation(context, const SignUpView());
                },
                text: AppStrings.createAccount,
                color: AppColors.primaryColor,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  customReplacementNavigation(context, const SignInView());
                },
                child: const Text(
                  AppStrings.loginNow,
                  style: AppTextStylies.poppins400Style16,
                ),
              )
            ],
          )
        : CustomBtn(
            onpressed: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
            text: AppStrings.next,
          );
  }
}
