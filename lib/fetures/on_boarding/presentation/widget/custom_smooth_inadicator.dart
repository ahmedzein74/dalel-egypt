import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  CustomSmoothIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrwon,
        dotHeight: 9,
        dotWidth: 14,
      ),
    );
  }
}
