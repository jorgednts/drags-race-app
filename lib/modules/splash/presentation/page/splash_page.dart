import 'package:flutter/material.dart';

import '../../../drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/splash_constants_images.dart';
import '../controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController control = SplashController();

  @override
  void initState() {
    super.initState();
    control.goToLoginPage(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: DragRaceConstantsColors.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(
                  SplashConstantsImages.splashLogo,
                  color: DragRaceConstantsColors.secondaryColor,
                ),
              ),
            ],
          ),
        ),
      );
}
