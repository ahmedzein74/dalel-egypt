import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';

import 'package:dalel_egypt/fetures/on_boarding/data/Models/on_boarding_model.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/function/on_boarding_visited.dart';
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
                  onBoardingVisited();
                  customReplacementNavigation(context, '/signUp');
                },
                text: AppStrings.createAccount,
                color: AppColors.primaryColor,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigation(context, '/login');
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
