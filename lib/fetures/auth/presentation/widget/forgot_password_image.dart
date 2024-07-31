import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 235,
        height: 235,
        child: Image.asset(Assets.assetsImagesForgetPassword));
  }
}
