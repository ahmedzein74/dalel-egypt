import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_text_form_field.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/have_account_text.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/terms_and_condation.dart';
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
              child: CustomTextFormField(
                labelText: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                labelText: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                labelText: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndCondation(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 90)),
            SliverToBoxAdapter(
                child: CustomBtn(onpressed: () {}, text: AppStrings.signUp)),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: HaveAnAccountText(
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
