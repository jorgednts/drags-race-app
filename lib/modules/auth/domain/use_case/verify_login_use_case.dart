import 'package:drags_race_app/modules/auth/presentation/page/login_page_state.dart';

abstract class VerifyLoginUseCase {
  LoginPageState verify();
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  VerifyLoginUseCaseImpl({
    required this.userEmail,
    required this.userPassword,
  });

  final String userEmail;
  final String userPassword;

  @override
  LoginPageState verify() {
    LoginPageState loginPageState;
    if(userEmail == 'user@dragsrace.com' && userPassword == 'ornacia123'){
      loginPageState = LoginPageState.successLogin;
    }if(userEmail.isEmpty || userPassword.isEmpty){
      loginPageState = LoginPageState.initialState;
    }else{
      loginPageState = LoginPageState.credentialError;
    }
    return loginPageState;
  }
}
