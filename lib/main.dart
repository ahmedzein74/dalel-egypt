import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/routes/app_routers.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/views/onBoarding_view.dart';
import 'package:dalel_egypt/fetures/splash/presentation/views/splash_view.dart';
import 'package:dalel_egypt/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await getIt<MyCacheHelper>().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DalelEgypt());
}

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
