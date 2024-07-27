import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_button.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/custom_text_form_field.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/terms_and_condation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextFormField(
              onChanged: (fristName) {
                BlocProvider.of<AuthCubit>(context).fristName = fristName;
              },
              labelText: AppStrings.fristName,
            ),
            CustomTextFormField(
              onChanged: (lastName) {
                BlocProvider.of<AuthCubit>(context).lastName = lastName;
              },
              labelText: AppStrings.lastName,
            ),
            CustomTextFormField(
              onChanged: (emailAddress) {
                BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
              },
              labelText: AppStrings.emailAddress,
            ),
            CustomTextFormField(
              onChanged: (password) {
                BlocProvider.of<AuthCubit>(context).password = password;
              },
              labelText: AppStrings.password,
            ),
            const TermsAndCondation(),
            const SizedBox(height: 90),
            CustomBtn(
                onpressed: () {
                  BlocProvider.of<AuthCubit>(context)
                      .signUpWithEmailAndPassword();
                },
                text: AppStrings.signUp)
          ],
        ));
      },
    );
  }
}
