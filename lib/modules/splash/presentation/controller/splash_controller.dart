import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/routes/app_routes.dart';

class SplashController {
  Future<void> goToLoginModule(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );

    Modular.to.navigate(AppConstantsRoutes.authModule);
  }
}
