import '../../presentation/page/login_page_state.dart';

mixin VerifyLoginUseCase {
  LoginPageState call(String userEmail, String userPassword);
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  static const String standardEmail = 'user@dragsrace.com';
  static const String standardPassword = 'ornacia123';

  @override
  LoginPageState call(String userEmail, String userPassword) {
    if (userEmail.isEmpty && userPassword.isEmpty) {
      return LoginPageState.initialState;
    }
    if (userEmail == standardEmail && userPassword == standardPassword) {
      return LoginPageState.successLogin;
    } else {
      return LoginPageState.credentialError;
    }
  }
}
