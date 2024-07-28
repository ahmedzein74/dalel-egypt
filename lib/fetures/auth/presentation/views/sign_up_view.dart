import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_sign_up_form.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/have_account_text.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/welcome_page_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    // sliver=children
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 150)),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: HaveAnAccountText(
                onTap: () {
                  customReplacementNavigation(context, '/login');
                },
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
