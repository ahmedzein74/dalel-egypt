import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodContainer(),
        HistoricalPeriodContainer(),
      ],
    );
  }
}

class HistoricalPeriodContainer extends StatelessWidget {
  const HistoricalPeriodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 174,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: AppColors.grey, blurRadius: 5),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 48,
              width: 64,
              child: Text(
                textAlign: TextAlign.center,
                'Ancient Egypt',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppTextStylies.poppins400Style16.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.deepBrwon),
              ),
            ),
            Container(
              height: 64,
              width: 47,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesFrame27))),
            )
          ],
        ),
      ),
    );
  }
}
