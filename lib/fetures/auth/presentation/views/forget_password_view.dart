import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_forgot_password_form.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/forgot_password_image.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/forgot_password_sub_title.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/welcome_page_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 108,
              ),
            ),
            SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.forgotPasswordPage),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: ForgotPasswordImage(),
            ),
            SliverToBoxAdapter(
              child: ForgotPasswordSubtitle(),
            ),
            SliverToBoxAdapter(
              child: CustomForgetPasswordForm(),
            ),
          ],
        ),
      ),
    );
  }
}
