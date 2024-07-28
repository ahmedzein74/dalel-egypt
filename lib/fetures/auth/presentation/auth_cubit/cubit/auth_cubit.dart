import 'package:bloc/bloc.dart';
import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_egypt/fetures/auth/presentation/widget/terms_and_condation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? fristName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  bool? termsAndCondationCheckBoxValue = false;
  signUpWithEmailAndPassword() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  termsAndCondationCheckBox({required newValue}) {
    termsAndCondationCheckBoxValue = newValue;
    emit(TermsAndConditionState());
  }
}
