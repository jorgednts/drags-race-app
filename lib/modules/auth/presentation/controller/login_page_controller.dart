import 'package:drags_race_app/modules/auth/domain/model/auth_state.dart';
import 'package:flutter/material.dart';

import '../../domain/model/user_model.dart';
import '../../domain/use_case/verify_login_use_case.dart';
import '../page/login_page_state.dart';

class LoginPageController extends ValueNotifier<LoginPageState> {
  LoginPageController({required this.verifyLoginUseCase})
      : super(LoginPageState.initialState);

  final VerifyLoginUseCase verifyLoginUseCase;

  LoginPageState doLogin(String userEmail, String userPassword) {
    final user = UserModel(email: userEmail, password: userPassword);
    if(verifyLoginUseCase.call(user) == AuthState.empty){
      value = LoginPageState.initialState;
    }if(verifyLoginUseCase.call(user) == AuthState.valid){
      value = LoginPageState.successLogin;
    }else{
      value = LoginPageState.credentialError;
    }
    return value;
  }
}
