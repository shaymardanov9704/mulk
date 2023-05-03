import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulk/core/translations/locale_keys.g.dart';

class InfoPage extends StatelessWidget {
  static const String id = 'InfoPage';
  final bool mode;

  const InfoPage({Key? key, required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mode ? Colors.yellow.shade100 : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade800,
        title: Text(
          LocaleKeys.info.tr(),
          style: GoogleFonts.rubik(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              LocaleKeys.info_list.tr(),
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
