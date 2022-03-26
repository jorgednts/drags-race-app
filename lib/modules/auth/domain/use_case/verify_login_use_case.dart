import '../model/auth_state.dart';
import '../model/user_model.dart';

mixin VerifyLoginUseCase {
  AuthState call(UserModel user);
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  static const String standardEmail = 'user@dragsrace.com';
  static const String standardPassword = 'ornacia123';

  @override
  AuthState call(UserModel user) {
    if (user.email.isEmpty && user.password.isEmpty) {
      return AuthState.empty;
    }
    if (user.email == standardEmail && user.password == standardPassword) {
      return AuthState.valid;
    } else {
      return AuthState.invalid;
    }
  }
}
