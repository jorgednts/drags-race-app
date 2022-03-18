import 'package:drags_race_app/modules/drag_race_constants/drag_race_constants_colors.dart';
import 'package:drags_race_app/modules/drag_race_constants/drag_race_constants_fonts.dart';
import 'package:drags_race_app/modules/splash/presentation/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RuPaul's Drags Race App",
      theme: ThemeData(
        fontFamily: DragRaceConstantsFonts.fredoka,
        primaryColor: DragRaceConstantsColors.primaryColor,
      ),
      home: const SplashPage(),
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    );
}