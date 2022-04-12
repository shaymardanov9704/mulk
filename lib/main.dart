//Rismillahir Rohmanir Rohim

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulk/pages/info_page.dart';
import 'package:mulk/pages/splash_screen_page.dart';
import 'package:mulk/translations/codegen_loader.g.dart';
import '../translations/locale_keys.g.dart';
import 'package:quran/quran.dart' as quran;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    path: 'assets/translations',
    supportedLocales: const [
      Locale('en'),
      Locale('uz'),
      Locale('ru'),
      Locale('de')
    ],
    fallbackLocale: const Locale('en'),
    assetLoader: const CodegenLoader(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  SplashScreen(),
      routes: {
        InfoPage.id: (context) => const InfoPage(mode: false,)},
    );
  }
}
