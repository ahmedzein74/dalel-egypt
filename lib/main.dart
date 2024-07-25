import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/fetures/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await getIt<MyCacheHelper>().init();
  runApp(const DalelEgypt());
}

class DalelEgypt extends StatelessWidget {
  const DalelEgypt({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      home: const SplashScreen(),
    );
  }
}
