import 'dart:async';

import 'package:dalel_egypt/core/function/app_functions.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/views/onBoarding_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    delayedNavigation(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStylies.pacifico400Style64,
        ),
      ),
    );
  }
}

void delayedNavigation(context) {
  Future.delayed(const Duration(seconds: 3), () {
    customReplacementNavigation(context, OnBoarding());
  });
}
