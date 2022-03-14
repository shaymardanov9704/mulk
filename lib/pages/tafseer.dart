import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulk/translations/locale_keys.g.dart';
import 'package:quran/quran.dart' as quran;
import '../translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Tafseer extends StatefulWidget {
  final bool mode;
  const Tafseer({Key? key, required this.mode}) : super(key: key);



  @override
  _TafseerState createState() => _TafseerState(mode);
}

class _TafseerState extends State<Tafseer> {

  bool mode;
  _TafseerState(this.mode);
  double h = 0;
  double h1 = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() { });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:mode? Colors.yellow.shade100:Colors.white,
      body: ListView(
        children: [
          SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(quran.getBasmala(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Scheherazade',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Colors.black)),

              Text(LocaleKeys.basmala.tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.green.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),

            ],
          ),
        ),
          Container(
            margin: const EdgeInsets.only(top: 10,right: 15,left: 15),
            width: 380,
            height: 1,
            color: Colors.green.shade900,
          ),

          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  LocaleKeys.first_t.tr(),
                  style: GoogleFonts.roboto(
                      color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 380,
                  height: 1,
                  color: Colors.green.shade900,
                )
              ],
            ),
          ),

          tafseerWidget(
              1,
              LocaleKeys.ayah1.tr(),
              LocaleKeys.tafser1.tr()
          ),
          tafseerWidget(
              2,
              LocaleKeys.ayah2.tr(),
              LocaleKeys.tafsir2.tr()
          ),
          tafseerWidget(
              3,
              LocaleKeys.ayah3.tr(),
              LocaleKeys.tafser3.tr()
          ),
          tafseerWidget(
              4,
              LocaleKeys.ayah4.tr(),
              LocaleKeys.tafser4.tr()
          ),
          tafseerWidget(
              5,
              LocaleKeys.ayah5.tr(),
              LocaleKeys.tafser5.tr()
          ),
          tafseerWidget(
              6,
              LocaleKeys.ayah6.tr(),
              LocaleKeys.tafser6.tr()
          ),
          tafseerWidget(
              7,
              LocaleKeys.ayah7.tr(),
              LocaleKeys.tafser7.tr()
          ),
          tafseerWidget(
              8,
              LocaleKeys.ayah8.tr(),
              LocaleKeys.tafser8.tr()
          ),
          tafseerWidget(
              9,
              LocaleKeys.ayah9.tr(),
              LocaleKeys.tafser9.tr()
          ),
          tafseerWidget(
              10,
              LocaleKeys.ayah10.tr(),
              LocaleKeys.tafser10.tr()
          ),
          tafseerWidget(
              11,
              LocaleKeys.ayah11.tr(),
              LocaleKeys.tafser11.tr()
          ),
          tafseerWidget(
              12,
              LocaleKeys.ayah12.tr(),
              LocaleKeys.tafser12.tr()
          ),
          tafseerWidget(
              13,
              LocaleKeys.ayah13.tr(),
              LocaleKeys.tafser13.tr()
          ),
          tafseerWidget(
              14,
              LocaleKeys.ayah14.tr(),
              LocaleKeys.tafser14.tr()
          ),
          tafseerWidget(
              15,
              LocaleKeys.ayah15.tr(),
              LocaleKeys.tafser15.tr()
          ),
          tafseerWidget(
              16,
              LocaleKeys.ayah16.tr(),
              LocaleKeys.tafser16.tr()
          ),
          tafseerWidget(
              17,
              LocaleKeys.ayah17.tr(),
              LocaleKeys.tafser17.tr()
          ),
          tafseerWidget(
              18,
              LocaleKeys.ayah18.tr(),
              LocaleKeys.tafser18.tr()
          ),
          tafseerWidget(
              19,
              LocaleKeys.ayah19.tr(),
              LocaleKeys.tafser19.tr()
          ),
          tafseerWidget(
              20,
              LocaleKeys.ayah20.tr(),
              LocaleKeys.tafser20.tr()
          ),
          tafseerWidget(
              21,
              LocaleKeys.ayah21.tr(),
              LocaleKeys.tafser21.tr()
          ),
          tafseerWidget(
              22,
              LocaleKeys.ayah22.tr(),
              LocaleKeys.tafser22.tr()
          ),
          tafseerWidget(
              23,
              LocaleKeys.ayah23.tr(),
              LocaleKeys.tafser23.tr()
          ),
          tafseerWidget(
              24,
              LocaleKeys.ayah24.tr(),
              LocaleKeys.tafser24.tr()
          ),
          tafseerWidget(
              25,
              LocaleKeys.ayah25.tr(),
              LocaleKeys.tafser25.tr()
          ),
          tafseerWidget(
              26,
              LocaleKeys.ayah26.tr(),
              LocaleKeys.tafser26.tr()
          ),
          tafseerWidget(
              27,
              LocaleKeys.ayah27.tr(),
              LocaleKeys.tafser27.tr()
          ),
          tafseerWidget(
              28,
              LocaleKeys.ayah28.tr(),
              LocaleKeys.tafser28.tr()
          ),
          tafseerWidget(
              29,
              LocaleKeys.ayah29.tr(),
              LocaleKeys.tafser29.tr()
          ),
          tafseerWidget(
              30,
              LocaleKeys.ayah30.tr(),
              LocaleKeys.tafser30.tr()
          ),
         ],
      ),
    );
  }
}

Widget tafseerWidget(int ayahNumber, String translate, String tafseer) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Text(
          "  ${quran.getVerse(67, ayahNumber)}",
          textAlign: TextAlign.right,
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: 'Scheherazade'),
        ),
        const SizedBox(height: 5),
        Text(
          '(67:$ayahNumber) $translate',
          style: GoogleFonts.roboto(
              color: Colors.lightGreen.shade900,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          tafseer,
          style: GoogleFonts.roboto(
              color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 380,
          height: 1,
          color: Colors.green.shade900,
        )
      ],
    ),
  );
}
