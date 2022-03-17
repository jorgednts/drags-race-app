import 'package:flutter/material.dart';

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
    //control.goToPokedexPage(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.cyan[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(
                  SplashConstantsImages.splashLogo,
                  color: Colors.pink[300],
                ),
              ),
            ],
          ),
        ),
      );
}
