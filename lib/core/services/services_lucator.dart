import 'package:dalel_egypt/core/database/cache/cache_helper.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:get_it/get_it.dart';

//singleton design patren
final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<MyCacheHelper>(MyCacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
