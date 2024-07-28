import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/core/function/show_toast.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_text_form_field.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/terms_and_condation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccesState) {
          showToast('Account Created Successfuly');
          customReplacementNavigation(context, '/homeView');
        } else if (state is SignUpFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'First name cannot be empty';
                  }
                  return null;
                },
                onChanged: (fristName) {
                  authCubit.fristName = fristName;
                },
                labelText: AppStrings.fristName,
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Last name cannot be empty';
                  }
                  return null;
                },
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
                labelText: AppStrings.lastName,
              ),
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
              const TermsAndCondation(),
              const SizedBox(height: 90),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      color: authCubit.termsAndCondationCheckBoxValue == false
                          ? AppColors.grey
                          : null,
                      onpressed: () {
                        if (authCubit.termsAndCondationCheckBoxValue == true) {
                          if (authCubit.signUpFormKey.currentState!
                              .validate()) {
                            authCubit.signUpWithEmailAndPassword();
                          }
                        }
                      },
                      text: AppStrings.signUp,
                    ),
            ],
          ),
        );
      },
    );
  }
}
