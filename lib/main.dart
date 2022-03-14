//Rismillahir Rohmanir Rohim

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulk/pages/info_page.dart';
import 'package:mulk/pages/read.dart';
import 'package:mulk/pages/splash_screen_page.dart';
import 'package:mulk/pages/study_and_listen.dart';
import 'package:mulk/pages/tafseer.dart';
import 'package:mulk/translations/codegen_loader.g.dart';
import '../translations/locale_keys.g.dart';

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
    child: MyApp(),
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
      home: const SplashScreen(),
      routes: {
        InfoPage.id: (context) => InfoPage(mode: false,)},
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  bool mode = false;
  bool sValue = true;
  double h = 0;
  double h1 = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade800, //FF512DA8
        title: Text(
          LocaleKeys.title.tr(),
          style: GoogleFonts.rubik(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor:mode? Colors.yellow.shade100:Colors.white,
        child: ListView(
          children: [
            Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.lightGreen.shade800,
                child:  Center(
                  child: Column(
                    children: [
                    const  SizedBox(height: 40,),
                   const Text('الملك',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.w600,
                         fontFamily: 'Scheherazade'),),
                      Text(
                        LocaleKeys.title.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Scheherazade'),
                      ),
                    ],
                  )
                )),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 130,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(CupertinoIcons.globe, size: 28),
                  const SizedBox(width: 5),
                  Text(LocaleKeys.lan.tr(), style: GoogleFonts.rubik(fontSize: 18)),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          h = (200 - h).abs();
                          h1 = 0;
                        });
                      },
                      icon: const Icon(CupertinoIcons.ellipsis_vertical,
                          size: 26))
                ],
              ),
            ),
            AnimatedContainer(
              padding: const EdgeInsets.only(left: 30),
              duration: const Duration(milliseconds: 5),
              width: MediaQuery.of(context).size.width - 110,
              height: h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        context.setLocale(const Locale('en'));
                        setState(() {});
                      },
                      child: const Text('        English       ')),
                  OutlinedButton(
                      onPressed: () {
                        context.setLocale(const Locale('ru'));
                        setState(() {});
                      },
                      child: const Text('       Русский      ')),
                  OutlinedButton(
                      onPressed: () {
                        context.setLocale(const Locale('uz'));
                        setState(() {});
                      },
                      child: const Text('        O`zbek       ')),
                  OutlinedButton(
                      onPressed: () {
                        context.setLocale(const Locale('de'));
                        setState(() {});
                      },
                      child: const Text(' Ўзбек(кирил) ')),
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 130,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(CupertinoIcons.settings_solid, size: 28),
                  const SizedBox(width: 5),
                  Text(LocaleKeys.sett.tr(), style: GoogleFonts.rubik(fontSize: 18)),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          h1 = (100 - h1).abs();
                          h = 0;
                        });
                      },
                      icon: const Icon(CupertinoIcons.ellipsis_vertical,
                          size: 26))
                ],
              ),
            ),
            AnimatedContainer(
              padding: const EdgeInsets.only(left: 30),
              duration: const Duration(milliseconds: 3),
              width: MediaQuery.of(context).size.width - 110,
              height: h1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                       Text(LocaleKeys.lmode.tr()),
                      Switch(
                        value: sValue,
                        onChanged: (_)async {
                          setState(() {
                            mode = false;
                            sValue = true;
                          });

                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                       Text(LocaleKeys.dmode.tr()),
                      Switch(
                        value: !sValue,
                        onChanged: (_)async {
                          setState(() {
                            mode = true;
                            sValue = false;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 130,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(CupertinoIcons.info, size: 28),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 198,
                    child: Text(LocaleKeys.info.tr(), style: GoogleFonts.rubik(fontSize: 16)),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return InfoPage(mode: mode);
                            }));
                      },
                      icon: const Icon(CupertinoIcons.square_arrow_right,
                          size: 26)),
                  const SizedBox(width: 4)
                ],
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: [
          StudyAndListen(
            mode: mode,
          ),
          Read(
            mode: mode,
          ),
          Tafseer(
            mode: mode,
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          backgroundColor: Colors.lightGreen.shade800,
          items: [
            BottomNavyBarItem(
              icon: const Icon(CupertinoIcons.square_favorites),
              title:  Text(LocaleKeys.study.tr()),
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: const Icon(CupertinoIcons.book),
              title:  Text(LocaleKeys.read.tr()),
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: const Icon(CupertinoIcons.bookmark_fill),
              title:  Text(LocaleKeys.tafserr.tr()),
              activeColor: Colors.white,
            ),
          ],
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          }),
    );
  }
}
