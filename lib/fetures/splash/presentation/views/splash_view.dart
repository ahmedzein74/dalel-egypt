import 'dart:async';

import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    bool isOnBoardingVisited =
        getIt<MyCacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigation(context, '/signIn')
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigation(context, '/homeView')
              : delayedNavigation(context, '/signIn');
    } else {
      delayedNavigation(context, '/onBoarding');
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
