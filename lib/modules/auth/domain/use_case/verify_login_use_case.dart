abstract class VerifyLoginUseCase {
  bool verify(String email, String password);
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  @override
  bool verify(String email, String password) {
    final bool successfulLogin;
    if(email == 'user@dragsrace.com' && password == 'ornacia123'){
      successfulLogin = true;
    }else{
      successfulLogin = false;
    }
    return successfulLogin;
  }
}
