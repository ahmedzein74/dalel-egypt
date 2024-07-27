import 'package:dalel_egypt/core/routes/app_routers.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DalelEgypt extends StatelessWidget {
  const DalelEgypt({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      routerConfig: router,
    );
  }
}
