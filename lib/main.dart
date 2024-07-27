import 'package:dalel_egypt/app/dalel.dart';
import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/function/check_State_changes.dart';
import 'package:dalel_egypt/core/routes/app_routers.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';

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
  checkStateChanges();
  runApp(const DalelEgypt());
}
