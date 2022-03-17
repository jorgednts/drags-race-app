import 'package:drags_race_app/modules/drag_race_constants/drag_race_constants_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.7, 1.0],
            colors: [
              DragRaceConstantsColors.dragRaceThirdGradientColor,
              DragRaceConstantsColors.dragRaceSecondGradientColor,
              DragRaceConstantsColors.dragRaceFirstGradientColor,
              DragRaceConstantsColors.dragRacePrimaryColor,
            ],
          ),
        ),

      );
}
