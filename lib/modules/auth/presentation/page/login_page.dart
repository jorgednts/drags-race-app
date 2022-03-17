import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../drag_race_constants/drag_race_constants_colors.dart';
import '../../../queens/presentation/page/search_queen_page.dart';
import '../../constants/login_page_image_constants.dart';
import '../../domain/use_case/verify_login_use_case.dart';
import '../common/custom_text_field_widget.dart';
import '../controller/login_page_controller.dart';
import 'login_page_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late VerifyLoginUseCase verifyLoginUseCase;
  late LoginPageController controller;
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    verifyLoginUseCase = VerifyLoginUseCaseImpl(
        userEmail: userEmail.toString(), userPassword: userPassword.toString());
    controller = LoginPageController(verifyLoginUseCase: verifyLoginUseCase);
    controller.value = LoginPageState.initialState;
  }

  Widget setInfoText(String infoText) => Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                infoText,
                style: const TextStyle(
                    fontSize: 18,
                    color: DragRaceConstantsColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      );

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
                          controller.login();
                          if (controller.value == LoginPageState.successLogin) {
                            MaterialPageRoute(
                                builder: (context) => const SearchQueenPage());
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
                              return setInfoText(
                                  S.of(context).loginPageInitialInfoText);
                            case LoginPageState.credentialError:
                              return setInfoText(S
                                  .of(context)
                                  .loginPageInvalidCredentialsInfoText);
                            case LoginPageState.successLogin:
                              return setInfoText(S
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
}
