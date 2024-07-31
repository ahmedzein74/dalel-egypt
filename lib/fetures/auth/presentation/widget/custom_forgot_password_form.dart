import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/function/show_toast.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is PasswordResetSuccessState) {
          showToast('Check your email to reset your password');
          customReplacementNavigation(context, '/signIn');
        } else if (state is PasswordResetFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.forgotPassordFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email address cannot be empty';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
                labelText: AppStrings.emailAddress,
              ),
              const SizedBox(height: 129),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      onpressed: () {
                        if (authCubit.forgotPassordFormKey.currentState!
                            .validate()) {
                          authCubit.resetPasswordWithLink();
                        }
                      },
                      text: AppStrings.sendResetPasswordLink,
                    ),
            ],
          ),
        );
      },
    );
  }
}
