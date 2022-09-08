import 'package:flutter_modular/flutter_modular.dart';

import '../constants/login_page_constants_routes.dart';
import '../domain/use_case/verify_login_use_case.dart';
import '../presentation/controller/login_page_controller.dart';
import '../presentation/page/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<VerifyLoginUseCase>(
          (i) => VerifyLoginUseCaseImpl(),
        ),
        Bind.factory(
          (i) => LoginPageController(verifyLoginUseCase: i()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          LoginPageConstantsRoutes.loginPage,
          child: (context, args) => const LoginPage(),
        ),
      ];
}
