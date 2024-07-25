import 'dart:async';

import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/function/app_functions.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_in.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_up.dart';
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
    bool isOnBoardingVisited =
        getIt<MyCacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      delayedNavigation(context, SignInView());
    } else {
      delayedNavigation(context, OnBoardingView());
    }
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

void delayedNavigation(context, targetRoute) {
  Future.delayed(const Duration(seconds: 3), () {
    customReplacementNavigation(context, targetRoute);
  });
}
