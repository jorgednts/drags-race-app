import 'package:drags_race_app/modules/auth/presentation/common/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/login_page_image_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
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
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.account_circle_rounded,
                          color: DragRaceConstantsColors.hintTextColor,
                          size: 30,
                        ),
                      ),
                      CustomTextFieldWidget(hintText: 'e-mail',)
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      );
}
