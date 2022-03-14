import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;


class Read extends StatefulWidget {
  final bool mode;

  const Read({Key? key, required this.mode}) : super(key: key);

  @override
  _ReadState createState() => _ReadState(mode);
}

class _ReadState extends State<Read> {
  bool mode;

  _ReadState(this.mode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mode ? Colors.yellow.shade100 : Colors.white,
      body: ListView(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                quran.getBasmala(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Scheherazade',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: Text(
              " ${quran.getVerse(67, 1, verseEndSymbol: false)} ﴿١﴾     ${quran.getVerse(67, 2, verseEndSymbol: false)} ﴿٢﴾     ${quran.getVerse(67, 3, verseEndSymbol: false)} ﴿٣﴾ ${quran.getVerse(67, 4, verseEndSymbol: false)} ﴿٤﴾ ${quran.getVerse(67, 5, verseEndSymbol: false)} ﴿٥﴾    ${quran.getVerse(67, 6, verseEndSymbol: false)} ﴿٦﴾ ${quran.getVerse(67, 7, verseEndSymbol: false)} ﴿٧﴾ ${quran.getVerse(67, 8, verseEndSymbol: false)} ﴿٨﴾ ${quran.getVerse(67, 9, verseEndSymbol: false)} ﴿٩﴾   ${quran.getVerse(67, 10, verseEndSymbol: false)} ﴿١٠﴾ ${quran.getVerse(67, 11, verseEndSymbol: false)} ﴿١١﴾ ${quran.getVerse(67, 12, verseEndSymbol: false)} ﴿١٢﴾ ${quran.getVerse(67, 13, verseEndSymbol: false)} ﴿١٣﴾   ${quran.getVerse(67, 14, verseEndSymbol: false)} ﴿١٤﴾ ${quran.getVerse(67, 15, verseEndSymbol: false)} ﴿١٥﴾ ${quran.getVerse(67, 16, verseEndSymbol: false)} ﴿١٦﴾ ${quran.getVerse(67, 17, verseEndSymbol: false)} ﴿١٧﴾   ${quran.getVerse(67, 18, verseEndSymbol: false)} ﴿١٨﴾ ${quran.getVerse(67, 19, verseEndSymbol: false)} ﴿١٩﴾ ${quran.getVerse(67, 20, verseEndSymbol: false)} ﴿٢٠﴾ ${quran.getVerse(67, 21, verseEndSymbol: false)} ﴿٢١﴾   ${quran.getVerse(67, 22, verseEndSymbol: false)} ﴿٢٢﴾ ${quran.getVerse(67, 23, verseEndSymbol: false)} ﴿٢٣﴾ ${quran.getVerse(67, 24, verseEndSymbol: false)} ﴿٢٤﴾ ${quran.getVerse(67, 25, verseEndSymbol: false)} ﴿٢٥﴾   ${quran.getVerse(67, 26, verseEndSymbol: false)} ﴿٢٦﴾ ${quran.getVerse(67, 27, verseEndSymbol: false)} ﴿٢٧﴾ ${quran.getVerse(67, 28, verseEndSymbol: false)} ﴿٢٨﴾ ${quran.getVerse(67, 29, verseEndSymbol: false)} ﴿٢٩﴾   ${quran.getVerse(67, 30, verseEndSymbol: false)} ﴿٣٠    ",
              textAlign: TextAlign.right,
              maxLines: 100,
              style: const TextStyle(
                  fontFamily: 'Scheherazade',
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
