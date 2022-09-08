import 'package:flutter_modular/flutter_modular.dart';

import '../modules/auth/module/auth_module.dart';
import '../modules/common/routes/app_routes.dart';
import '../modules/queens/module/queens_module.dart';
import '../modules/splash/module/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppConstantsRoutes.splashModule, module: SplashModule()),
        ModuleRoute(AppConstantsRoutes.authModule, module: AuthModule()),
        ModuleRoute(AppConstantsRoutes.queensModule, module: QueensModule()),
      ];
}
