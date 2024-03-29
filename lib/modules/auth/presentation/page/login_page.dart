import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/routes/app_routes.dart';
import '../../constants/login_page_image_constants.dart';
import '../common/custom_text_field_widget.dart';
import '../common/info_text_widget.dart';
import '../controller/login_page_controller.dart';
import 'login_page_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginPageController> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  Future<void> _goToQueenListPage(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    await Modular.to.pushNamed(AppConstantsRoutes.queensModule);
  }

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
          child: SingleChildScrollView(
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
                          textEditingController: userEmail,
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
                          obscureText: true,
                          textEditingController: userPassword,
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
                        onPressed: () {
                          controller.doLogin(
                            userEmail.text.toString(),
                            userPassword.text.toString(),
                          );
                          if (controller.value == LoginPageState.successLogin) {
                            _goToQueenListPage(context);
                          }
                        },
                        child: Text(
                          S.of(context).loginPageElevatedButtonText,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ValueListenableBuilder<LoginPageState>(
                        valueListenable: controller,
                        builder: (context, state, _) {
                          switch (state) {
                            case LoginPageState.initialState:
                              return InfoTextWidget(
                                infoText:
                                    S.of(context).loginPageInitialInfoText,
                              );
                            case LoginPageState.credentialError:
                              return InfoTextWidget(
                                infoText: S
                                    .of(context)
                                    .loginPageInvalidCredentialsInfoText,
                              );
                            case LoginPageState.successLogin:
                              return InfoTextWidget(
                                  infoText: S
                                      .of(context)
                                      .loginPageSuccessfulLoginInfoText);
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
