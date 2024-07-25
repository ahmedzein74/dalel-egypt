import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/on_boarding/widget/custom_nav_bar.dart';
import 'package:dalel_egypt/fetures/on_boarding/widget/onBoarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            const CustomNavBar(),
            OnBoardingWidgetBody(),
            CustomBtn(
              onpressed: () {},
              text: AppStrings.next,
            ),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    );
  }
}
