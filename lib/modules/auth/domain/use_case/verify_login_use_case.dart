abstract class VerifyLoginUseCase {
  bool verify();
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  VerifyLoginUseCaseImpl({
    required this.userEmail,
    required this.userPassword,
  });

  final String userEmail;
  final String userPassword;

  @override
  bool verify() {
    final bool successfulLogin;
    if(userEmail == 'user@dragsrace.com' && userPassword == 'ornacia123'){
      successfulLogin = true;
    }else{
      successfulLogin = false;
    }
    return successfulLogin;
  }
}
