import '../common/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/login_page_image_constants.dart';
import 'package:drags_race_app/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.3, 0.7, 1.0],
                colors: [
                  DragRaceConstantsColors.thirdGradientColor,
                  DragRaceConstantsColors.secondGradientColor,
                  DragRaceConstantsColors.firstGradientColor,
                  DragRaceConstantsColors.primaryColor,
                ],
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Image.asset(
                      LoginPageImageConstants.raceLogo,
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: DragRaceConstantsColors.secondaryColor,
                            size: 30,
                          ),
                        ),
                        CustomTextFieldWidget(
                          hintText: S.of(context).loginPageEmailHintText,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.password_sharp,
                            color: DragRaceConstantsColors.secondaryColor,
                            size: 30,
                          ),
                        ),
                        CustomTextFieldWidget(
                          hintText: S.of(context).loginPagePasswordHintText,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: DragRaceConstantsColors.secondaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          S.of(context).loginPageElevatedButtonText,
                          style: const TextStyle(fontSize: 18),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
