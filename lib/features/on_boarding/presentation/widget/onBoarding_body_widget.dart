import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/features/on_boarding/data/Models/on_boarding_model.dart';
import 'package:dalel_egypt/features/on_boarding/presentation/widget/custom_smooth_inadicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imagePath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothIndicator(controller: controller),
              const SizedBox(
                height: 24,
              ),
              Text(
                onBoardingData[index].title,
                style: AppTextStylies.poppins500Style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                onBoardingData[index].subtitle,
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
