import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/function/show_toast.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/custom_text_form_field.dart';
import 'package:dalel_egypt/features/auth/presentation/widget/forget_password_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccesState) {
          showToast('Welcome Back!');
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customReplacementNavigation(context, '/homeView')
              : showToast('Please verfiy your Account');
        } else if (state is SignInFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signinFormKey,
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
              CustomTextFormField(
                isPassword: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password cannot be empty';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onChanged: (password) {
                  authCubit.password = password;
                },
                labelText: AppStrings.password,
              ),
              const SizedBox(height: 16),
              const ForgetPasswoedTextWidget(),
              const SizedBox(height: 102),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      onpressed: () {
                        if (authCubit.signinFormKey.currentState!.validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      },
                      text: AppStrings.signIn,
                    ),
            ],
          ),
        );
      },
    );
  }
}
