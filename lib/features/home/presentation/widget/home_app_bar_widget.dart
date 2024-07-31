import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsImagesMenu),
        Text(
          AppStrings.appName,
          style: AppTextStylies.pacifico400Style64.copyWith(fontSize: 30),
        )
      ],
    );
  }
}
