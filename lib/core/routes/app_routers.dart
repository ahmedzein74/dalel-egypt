import 'package:dalel_egypt/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/features/auth/presentation/views/forget_password_view.dart';
import 'package:dalel_egypt/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_egypt/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_egypt/features/home/presentation/views/home_view.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_nav_bar_widget.dart';
import 'package:dalel_egypt/features/on_boarding/presentation/views/onBoarding_view.dart';
import 'package:dalel_egypt/features/splash/presentation/views/splash_view.dart';
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
    path: '/signIn',
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignInView(),
    ),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignUpView(),
    ),
  ),
  GoRoute(
    path: '/homeView',
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/forgetPassword',
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const ForgetPasswordView(),
    ),
  ),
  GoRoute(
    path: '/homeNavBar',
    builder: (context, state) => HomeNavBarWidget(),
  ),
]);
