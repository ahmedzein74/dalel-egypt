import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/core/services/services_lucator.dart';

void onBoardingVisited() {
  getIt<MyCacheHelper>().saveData(key: 'isOnBoardingVisited', value: true);
}
