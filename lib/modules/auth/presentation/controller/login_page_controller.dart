import 'package:flutter/material.dart';

import '../../domain/use_case/verify_login_use_case.dart';
import '../page/login_page_state.dart';

class LoginPageController extends ValueNotifier<LoginPageState> {
  LoginPageController({required this.verifyLoginUseCase})
      : super(LoginPageState.initialState);

  final VerifyLoginUseCase verifyLoginUseCase;

  LoginPageState login() => value = verifyLoginUseCase.verify();
}
