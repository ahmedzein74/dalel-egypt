import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/custom_sign_in_form.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/have_account_text.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/welcom_banner.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/welcome_page_text.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CustomWelcomBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverToBoxAdapter(
            child: HaveAccountWidget(
              onTap: () {
                customReplacementNavigation(context, '/signUp');
              },
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
            ),
          )
        ],
      ),
    );
  }
}
