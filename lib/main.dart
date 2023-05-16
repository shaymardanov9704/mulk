//Bismillahir Rohmanir Rohim

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mulk/core/translations/codegen_loader.g.dart';
import 'package:mulk/ui/pages/main/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
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
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Mulk',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainPage(),
    );
  }
}
