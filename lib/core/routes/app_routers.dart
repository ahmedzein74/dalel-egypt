import 'package:dalel_egypt/core/services/services_lucator.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/views/onBoarding_view.dart';
import 'package:dalel_egypt/fetures/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignInView(),
    ),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignUpView(),
    ),
  ),
  // GoRoute(
  //   path: '/forgetPassword',
  //   builder: (context, state) => ForgetPasswordView(
  //   ),
  // ),
  // GoRoute(
  //   path: '/bottomNavBar',
  //   builder: (context, state) => const HomeNavBar(),
  // ),
]);
