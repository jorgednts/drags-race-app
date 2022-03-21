// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `e-mail`
  String get loginPageEmailHintText {
    return Intl.message(
      'e-mail',
      name: 'loginPageEmailHintText',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get loginPagePasswordHintText {
    return Intl.message(
      'password',
      name: 'loginPagePasswordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginPageElevatedButtonText {
    return Intl.message(
      'Login',
      name: 'loginPageElevatedButtonText',
      desc: '',
      args: [],
    );
  }

  /// `WRONG CREDENTIALS, TRY AGAIN!`
  String get loginPageSnackBarText {
    return Intl.message(
      'WRONG CREDENTIALS, TRY AGAIN!',
      name: 'loginPageSnackBarText',
      desc: '',
      args: [],
    );
  }

  /// `TYPE YOUR CREDENTIALS`
  String get loginPageInitialInfoText {
    return Intl.message(
      'TYPE YOUR CREDENTIALS',
      name: 'loginPageInitialInfoText',
      desc: '',
      args: [],
    );
  }

  /// `OOH GIRL, INVALID CREDENTIALS, TRY AGAIN!`
  String get loginPageInvalidCredentialsInfoText {
    return Intl.message(
      'OOH GIRL, INVALID CREDENTIALS, TRY AGAIN!',
      name: 'loginPageInvalidCredentialsInfoText',
      desc: '',
      args: [],
    );
  }

  /// `START YOUR ENGINES!`
  String get loginPageSuccessfulLoginInfoText {
    return Intl.message(
      'START YOUR ENGINES!',
      name: 'loginPageSuccessfulLoginInfoText',
      desc: '',
      args: [],
    );
  }

  /// `TYPE TO START YOUR QUEEN SEARCH`
  String get searchQueenPageInfoText {
    return Intl.message(
      'TYPE TO START YOUR QUEEN SEARCH',
      name: 'searchQueenPageInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Search Queen`
  String get searchQueenPageHintText {
    return Intl.message(
      'Search Queen',
      name: 'searchQueenPageHintText',
      desc: '',
      args: [],
    );
  }

  /// `AN ERROR HAS OCCURRED :(`
  String get genericErrorText {
    return Intl.message(
      'AN ERROR HAS OCCURRED :(',
      name: 'genericErrorText',
      desc: '',
      args: [],
    );
  }

  /// `NETWORK ERROR :(`
  String get networkErrorText {
    return Intl.message(
      'NETWORK ERROR :(',
      name: 'networkErrorText',
      desc: '',
      args: [],
    );
  }

  /// `QUEEN NOT FOUND :O`
  String get notFoundErrorText {
    return Intl.message(
      'QUEEN NOT FOUND :O',
      name: 'notFoundErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Quote:`
  String get queenDetailsQuote {
    return Intl.message(
      'Quote:',
      name: 'queenDetailsQuote',
      desc: '',
      args: [],
    );
  }

  /// `ID:`
  String get queenDetailsID {
    return Intl.message(
      'ID:',
      name: 'queenDetailsID',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get queenDetailsName {
    return Intl.message(
      'Name:',
      name: 'queenDetailsName',
      desc: '',
      args: [],
    );
  }

  /// `Seasons:`
  String get queenDetailsSeasons {
    return Intl.message(
      'Seasons:',
      name: 'queenDetailsSeasons',
      desc: '',
      args: [],
    );
  }

  /// `General Info:`
  String get queenDetailsGeneralInfo {
    return Intl.message(
      'General Info:',
      name: 'queenDetailsGeneralInfo',
      desc: '',
      args: [],
    );
  }

  /// `Seasons Info:`
  String get queenDetailsSeasonsInfo {
    return Intl.message(
      'Seasons Info:',
      name: 'queenDetailsSeasonsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Lipsyncs Info:`
  String get queenDetailsLipsyncsInfo {
    return Intl.message(
      'Lipsyncs Info:',
      name: 'queenDetailsLipsyncsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Winner:`
  String get queenGeneralInfoWinner {
    return Intl.message(
      'Winner:',
      name: 'queenGeneralInfoWinner',
      desc: '',
      args: [],
    );
  }

  /// `Miss Congeniality:`
  String get queenGeneralInfoMissCongeniality {
    return Intl.message(
      'Miss Congeniality:',
      name: 'queenGeneralInfoMissCongeniality',
      desc: '',
      args: [],
    );
  }

  /// `Best Placement:`
  String get queenGeneralInfoBestPlacement {
    return Intl.message(
      'Best Placement:',
      name: 'queenGeneralInfoBestPlacement',
      desc: '',
      args: [],
    );
  }

  /// `Song:`
  String get queenLipsyncInfoSongName {
    return Intl.message(
      'Song:',
      name: 'queenLipsyncInfoSongName',
      desc: '',
      args: [],
    );
  }

  /// `Artist:`
  String get queenLipsyncInfoSongArtist {
    return Intl.message(
      'Artist:',
      name: 'queenLipsyncInfoSongArtist',
      desc: '',
      args: [],
    );
  }

  /// `Result:`
  String get queenLipsyncInfoResult {
    return Intl.message(
      'Result:',
      name: 'queenLipsyncInfoResult',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
