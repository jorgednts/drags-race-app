import 'package:flutter/material.dart';

import '../../domain/use_case/verify_login_use_case.dart';
import '../page/login_page_state.dart';

class LoginPageController extends ValueNotifier<LoginPageState> {
  LoginPageController({required this.verifyLoginUseCase})
      : super(LoginPageState.successLogin);

  final VerifyLoginUseCase verifyLoginUseCase;

  LoginPageState login() {
    if (verifyLoginUseCase.verify() == true) {
      return LoginPageState.successLogin;
    } else {
      return LoginPageState.credentialError;
    }
  }
}
