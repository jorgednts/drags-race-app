import 'package:flutter/material.dart';

import '../../../queens/constants/queen_constants_images.dart';
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
    //control.goToPokedexPage(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(QueenConstantsImages.splashLogo),
              ),
            ],
          ),
        ),
      );
}
