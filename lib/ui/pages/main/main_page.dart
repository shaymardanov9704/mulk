import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulk/core/translations/locale_keys.g.dart';
import 'package:mulk/ui/pages/tafseer_page.dart';
import 'bloc/main_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final bloc = MainBloc();
  int _index = 0;

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.activeIndex.toString()),
            ),
            floatingActionButton: SizedBox(
              height: 50,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightGreen.shade800.withOpacity(0.8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              bloc.add(MainEvent.loopMode(mode: LoopMode.playlist));
                            },
                            icon: const Icon(
                              CupertinoIcons.repeat,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(MainEvent.previous());
                            },
                            icon: const Icon(
                              CupertinoIcons.backward_end_alt,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              state.playerStatus == PlayerStatus.play
                                  ? bloc.add(MainEvent.pause())
                                  : bloc.add(MainEvent.play());
                            },
                            icon: Icon(
                              state.playerStatus == PlayerStatus.play
                                  ? CupertinoIcons.pause
                                  : CupertinoIcons.play,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(MainEvent.next());
                            },
                            icon: const Icon(
                              CupertinoIcons.forward_end_alt,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(MainEvent.stop());
                            },
                            icon: const Icon(
                              CupertinoIcons.stop,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            body: IndexedStack(
              index: _index,
              children: [
                ListView.builder(
                  itemCount: 30,
                  itemBuilder: (_, i) => AyahWidget(
                    verse: "i",
                    number: i,
                    onTap: () => bloc.add(MainEvent.play()),
                    translations: LocaleKeys.ayah1.tr(),
                  ),
                ),
                const TafseerPage(),
              ],
            ),
            bottomNavigationBar: BottomNavyBar(
              selectedIndex: _index,
              showElevation: true,
              backgroundColor: Colors.lightGreen.shade800,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              items: [
                BottomNavyBarItem(
                  icon: const Icon(CupertinoIcons.square_favorites),
                  title: Text(LocaleKeys.study.tr()),
                  activeColor: Colors.white,
                ),
                BottomNavyBarItem(
                  icon: const Icon(CupertinoIcons.book),
                  title: Text(LocaleKeys.read.tr()),
                  activeColor: Colors.white,
                ),
              ],
              onItemSelected: (int value) {
                setState(() {
                  _index = value;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class AyahWidget extends StatelessWidget {
  final String verse;
  final int number;
  final String translations;
  final Function() onTap;

  const AyahWidget({
    Key? key,
    required this.verse,
    required this.number,
    required this.translations,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: Container(
              width: MediaQuery.of(context).size.width - 10,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Center(
                child: Text(
                  verse,
                  textAlign: TextAlign.right,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 27,
                    fontFamily: 'Scheherazade',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: Text(
              '  (67:$number) $translations',
              maxLines: 7,
              style: GoogleFonts.roboto(
                color: Colors.green.shade900,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.green.shade400,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
