import 'package:flutter/material.dart';

import '../../domain/use_case/verify_login_use_case.dart';
import '../page/login_page_state.dart';


class LoginPageController extends ValueNotifier<LoginPageState> {
  LoginPageController(this.verifyLoginUseCase)
      : super(LoginPageState.successLogin);

  final VerifyLoginUseCase verifyLoginUseCase;

  bool verify()=> verifyLoginUseCase.verify();
}