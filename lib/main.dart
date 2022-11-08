import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'di/app_module.dart';
import 'generated/l10n.dart';
import 'modules/common/drag_race_constants/drag_race_constants_colors.dart';
import 'modules/common/drag_race_constants/drag_race_constants_fonts.dart';
import 'modules/queens/domain/model/details/lipsync_cache.dart';
import 'modules/queens/domain/model/details/queen_details_cache.dart';
import 'modules/queens/domain/model/details/season_cache.dart';
import 'modules/queens/domain/model/queen/queen_cache.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive
    ..init((await getApplicationDocumentsDirectory()).path)
    ..registerAdapter<QueenCache>(QueenCacheAdapter())
    ..registerAdapter<QueenDetailsCache>(QueenDetailsCacheAdapter())
    ..registerAdapter<SeasonCache>(SeasonCacheAdapter())
    ..registerAdapter<LipsyncCache>(LipsyncCacheAdapter());

  runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "RuPaul's Drags Race App",
        theme: ThemeData(
          fontFamily: DragRaceConstantsFonts.fredoka,
          primaryColor: DragRaceConstantsColors.primaryColor,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      );
}
