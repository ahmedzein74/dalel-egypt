import 'package:dalel_egypt/fetures/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? fristName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();
  bool? termsAndCondationCheckBoxValue = false;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      FirebaseAuth.instance.createUserWithEmailAndPassword(
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
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  termsAndCondationCheckBox({required newValue}) {
    termsAndCondationCheckBoxValue = newValue;
    emit(TermsAndConditionState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
      emit(SignInSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(SignInFailureState(errMessage: 'Email or Password are Incorrect'));
      }
    } catch (e) {
      emit(SignInFailureState(errMessage: e.toString()));
    }
  }
}
