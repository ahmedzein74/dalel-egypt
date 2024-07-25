import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/fetures/on_boarding/widget/custom_smooth_inadicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.assetsImagesOnBoarding1),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothIndicator(controller: _pageController),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Explore The history with Dalel in a smart way',
                style: AppTextStylies.poppins500Style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Using our app’s history libraries you can find many historical periods ',
                style: AppTextStylies.poppins400Style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
