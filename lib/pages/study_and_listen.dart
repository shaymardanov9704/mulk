
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import '../translations/locale_keys.g.dart';
import 'package:quran/quran.dart' as quran;

class StudyAndListen extends StatefulWidget {
  final bool mode;
  const StudyAndListen({Key? key,required this.mode}) : super(key: key);

  @override
  _StudyAndListenState createState() => _StudyAndListenState(mode);
}

class _StudyAndListenState extends State<StudyAndListen> {
  bool mode;
  _StudyAndListenState(this.mode);
  double h = 0;
  double h1 = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  playAyah(String index) async {
    await audioPlayer.open(
      Audio(
        "assets/audios/$index.mp3",
        metas: Metas(
          id: 'Instrumental',
          title: 'Mulk',
          artist: 'Mishari Roshid',
          image: const MetasImage.asset('assets/images/mishary_rashid.png'),
        ),
      ),
      showNotification: true,
    );
    await audioPlayer.play();
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
    });
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
              children: [
                Text(quran.getBasmala(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'Scheherazade',
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Colors.black)),
                Row(
                  children: [
                    SizedBox(
                        width: 48,
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                playAyah('001001');
                              },
                              icon: const Icon(CupertinoIcons.play_arrow)),
                        )),
                    Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width-50,
                      child:  Text(
                          LocaleKeys.basmala.tr(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              color: Colors.green.shade900,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
          ayahWidget(
              context,
              170,
              0,
              54,
              1,
              'تَبَـٰرَكَ ٱلَّذِى بِيَدِهِ ٱلْمُلْكُ وَهُوَ عَلَىٰ كُلِّ شَىْءٍۢ قَدِيرٌ',
            //  'Tabaarakal lazee biyadihil mulku wa huwa ‘alaa kulli shai-in qadeer',
              LocaleKeys.ayah1.tr(),
              '١', (asset) {
            playAyah(asset);
          }, '067001'),
          ayahWidget(
              context,
              204,
              0,
              86,
              2,
              'ٱلَّذِى خَلَقَ سَبْعَ سَمَـٰوَٰتٍۢ طِبَاقًۭا ۖ مَّا تَرَىٰ فِى خَلْقِ ٱلرَّحْمَـٰنِ مِن تَفَـٰوُتٍۢ ۖ فَٱرْجِعِ ٱلْبَصَرَ هَلْ تَرَىٰ مِن فُطُورٍۢ',
           //   'Allazee khalaqal mawta walhayaata liyabluwakum ayyukum ahsanu ‘amalaa; wa huwal ‘azeezul ghafoor',
              LocaleKeys.ayah2.tr(),
              '٢', (asset) {
            playAyah(asset);
          }, '067002'),
          ayahWidget(
              context,
              206,
              0,
              84,
              3,
              'ثُمَّ ٱرْجِعِ ٱلْبَصَرَ كَرَّتَيْنِ يَنقَلِبْ إِلَيْكَ ٱلْبَصَرُ خَاسِئًۭا وَهُوَ حَسِيرٌۭ',
            //  'Allazee khalaqa sab’a samaawaatin tibaaqam maa taraa fee khalqir rahmaani min tafaawut farji’il basara hal taraa min futoor',
              LocaleKeys.ayah3.tr(),
              '٣', (asset) {
            playAyah(asset);
          }, '067003'),
          ayahWidget(
              context,
              187,
              0,
              60,
              4,
              'وَلَقَدْ زَيَّنَّا ٱلسَّمَآءَ ٱلدُّنْيَا بِمَصَـٰبِيحَ وَجَعَلْنَـٰهَا رُجُومًۭا لِّلشَّيَـٰطِينِ ۖ وَأَعْتَدْنَا لَهُمْ عَذَابَ ٱلسَّعِيرِ',
            //  'Summar ji’il basara karrataini yanqalib ilaikal basaru khaasi’anw wa huwa haseer',
              LocaleKeys.ayah4.tr(),
              '٤', (asset) {
            playAyah(asset);
          }, '067004'),
          ayahWidget(
              context,
              216,
              0,
              100,
              5,
              'وَلَقَدْ زَيَّنَّا ٱلسَّمَآءَ ٱلدُّنْيَا بِمَصَـٰبِيحَ وَجَعَلْنَـٰهَا رُجُومًۭا لِّلشَّيَـٰطِينِ ۖ وَأَعْتَدْنَا لَهُمْ عَذَابَ ٱلسَّعِيرِ',
             // 'Wa laqad zaiyannas samaaa’ad dunyaa bimasaa beeha wa ja’alnaahaa rujoomal lish shayaateeni wa a’tadnaa lahum ‘azaabas sa’eer',
              LocaleKeys.ayah5.tr(),
              '٥', (asset) {
            playAyah(asset);
          }, '067005'),
          ayahWidget(
              context,
              186,
              40,
              65,
              6,
              'وَلِلَّذِينَ كَفَرُوا۟ بِرَبِّهِمْ عَذَابُ \nجَهَنَّمَ ۖ وَبِئْسَ ٱلْمَصِيرُ',
              //'Wa lillazeena kafaroo bi rabbihim ‘azaabu jahannama wa bi’sal maseer',
              LocaleKeys.ayah6.tr(),              '٦', (asset) {
            playAyah(asset);
          }, '067006'),
          ayahWidget(
              context,
              190,
              40,
              65,
              7,
              'إِذَآ أُلْقُوا۟ فِيهَا سَمِعُوا۟ لَهَا شَهِيقًۭا وَهِىَ تَفُورُ',
             // 'Izaaa ulqoo feehaa sami’oo lahaa shaheeqanw wa hiya tafoor',
              LocaleKeys.ayah7.tr(),              '٧', (asset) {
            playAyah(asset);
          }, '067007'),
          ayahWidget(
              context,
              216,
              0,
              100,
              8,
              'تَكَادُ تَمَيَّزُ مِنَ ٱلْغَيْظِ ۖ كُلَّمَآ أُلْقِىَ فِيهَا فَوْجٌۭ سَأَلَهُمْ خَزَنَتُهَآ أَلَمْ يَأْتِكُمْ نَذِيرٌۭ',
             // 'Takaadu tamayyazu minal ghaizz kullamaaa ulqiya feehaa fawjun sa alahum khazanatuhaaa alam ya’tikum nazeer',
              LocaleKeys.ayah8.tr(),              '٨', (asset) {
            playAyah(asset);
          }, '067008'),
          ayahWidget(
              context,
              223,
              60,
              106,
              9,
              'قَالُوا۟ بَلَىٰ قَدْ جَآءَنَا نَذِيرٌۭ فَكَذَّبْنَا وَقُلْنَا مَا نَزَّلَ ٱللَّهُ مِن شَىْءٍ إِنْ أَنتُمْ إِلَّا فِى ضَلَـٰلٍۢ كَبِيرٍۢ',
             // 'Qaaloo balaa qad jaaa’anaa nazeerun fakazzabnaa wa qulnaa maa nazzalal laahu min shai in in antum illaa fee dalaalin kabeer',
              LocaleKeys.ayah9.tr(),              '٩', (asset) {
            playAyah(asset);
          }, '067009'),
          ayahWidget(
              context,
              206,
              0,
              87,
              10,
              'وَقَالُوا۟ لَوْ كُنَّا نَسْمَعُ أَوْ نَعْقِلُ مَا كُنَّا فِىٓ أَصْحَـٰبِ ٱلسَّعِيرِ',
             // 'Wa qaaloo law kunnaa nasma’u awna’qilu maa kunnaa feee as haabis sa’eer',
              LocaleKeys.ayah10.tr(),              '١٠', (asset) {
            playAyah(asset);
          }, '067010'),
          ayahWidget(
              context,
              170,
              0,
              54,
              11,
              'فَٱعْتَرَفُوا۟ بِذَنۢبِهِمْ فَسُحْقًۭا لِّأَصْحَـٰبِ ٱلسَّعِيرِ',
              //'Fa’tarafoo bizambihim fasuhqal li as haabis sa’eer',
              LocaleKeys.ayah11.tr(),              '١١', (asset) {
            playAyah(asset);
          }, '067011'),
          ayahWidget(
              context,
              186,
              0,
              65,
              12,
              'إِنَّ ٱلَّذِينَ يَخْشَوْنَ رَبَّهُم بِٱلْغَيْبِ لَهُم مَّغْفِرَةٌۭ وَأَجْرٌۭ كَبِيرٌۭ',
             // 'Innal lazeena yakhshawna rabbahum bilghaibi lahum maghfiratunw wa ajrun kabeer',
              LocaleKeys.ayah12.tr(),              '١٢', (asset) {
            playAyah(asset);
          }, '067012'),
          ayahWidget(
              context,
              186,
              40,
              67,
              13,
              'وَأَسِرُّوا۟ قَوْلَكُمْ أَوِ ٱجْهَرُوا۟ بِهِۦٓ ۖ إِنَّهُۥ عَلِيمٌۢ بِذَاتِ ٱلصُّدُورِ',
             // 'Wa asirroo qawlakum awijharoo bih; innahoo ‘aleemum bizaatis sudoor',
              LocaleKeys.ayah13.tr(),              '١٣', (asset) {
            playAyah(asset);
          }, '067013'),
          ayahWidget(
              context,
              125,
              0,
              66,
              14,
              'أَلَا يَعْلَمُ مَنْ خَلَقَ وَهُوَ ٱللَّطِيفُ ٱلْخَبِيرُ',
             // 'Alaa ya’lamu man khalaqa wa huwal lateeful khabeer',
              LocaleKeys.ayah14.tr(),              '١٤', (asset) {
            playAyah(asset);
          }, '067014'),
          ayahWidget(
              context,
              206,
              0,
              85,
              15,
              'هُوَ ٱلَّذِى جَعَلَ لَكُمُ ٱلْأَرْضَ ذَلُولًۭا فَٱمْشُوا۟ فِى مَنَاكِبِهَا وَكُلُوا۟ مِن رِّزْقِهِۦ ۖ وَإِلَيْهِ ٱلنُّشُورُ',
              //'Huwal lazee ja’ala lakumul arda zaloolan famshoo fee manaakibihaa wa kuloo mir rizqih; wa ilaihin nushoor',
              LocaleKeys.ayah15.tr(),              '١٥', (asset) {
            playAyah(asset);
          }, '067015'),
          ayahWidget(
              context,
              183,
              40,
              66,
              16,
              'ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخْسِفَ بِكُمُ ٱلْأَرْضَ فَإِذَا هِىَ تَمُورُ',
              //'‘A-amintum man fissamaaa’i aiyakhsifa bi kumul arda fa izaa hiya tamoor',
              LocaleKeys.ayah16.tr(),              '١٦', (asset) {
            playAyah(asset);
          }, '067016'),
          ayahWidget(
              context,
              210,
              0,
              86,
              17,
              'أَمْ أَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يُرْسِلَ عَلَيْكُمْ حَاصِبًۭا ۖ فَسَتَعْلَمُونَ كَيْفَ نَذِيرِ',
              //'Am amintum man fissamaaa’i ai yursila ‘alaikum haasiban fasata’lamoona kaifa nazeer',
              LocaleKeys.ayah17.tr(),              '١٧', (asset) {
            playAyah(asset);
          }, '067017'),
          ayahWidget(
              context,
              186,
              0,
              68,
              18,
              'وَلَقَدْ كَذَّبَ ٱلَّذِينَ مِن قَبْلِهِمْ فَكَيْفَ كَانَ نَكِيرِ',
              //'Wa laqad kazzabal lazeena min qablihim fakaifa kaana nakeer',
              LocaleKeys.ayah18.tr(),              '١٨', (asset) {
            playAyah(asset);
          }, '067018'),
          ayahWidget(
              context,
              216,
              0,
              98,
              19,
              'أَوَلَمْ يَرَوْا۟ إِلَى ٱلطَّيْرِ فَوْقَهُمْ صَـٰٓفَّـٰتٍۢ وَيَقْبِضْنَ ۚ مَا يُمْسِكُهُنَّ إِلَّا ٱلرَّحْمَـٰنُ ۚ إِنَّهُۥ بِكُلِّ شَىْءٍۭ بَصِيرٌ',
              //'Awalam yaraw ilat tairi fawqahum saaaffaatinw wa yaqbidn; maa yumsikuhunna il’lar rahmaan; innahoo bikulli shai in baseer',
              LocaleKeys.ayah19.tr(),              '١٩', (asset) {
            playAyah(asset);
          }, '067019'),
          ayahWidget(
              context,
              190,
              0,
              66,
              20,
              '    هَـٰذَا ٱلَّذِى هُوَ جُندٌۭ لَّكُمْ يَنصُرُكُم مِّن دُونِ ٱلرَّحْمَـٰنِ ۚ إِنِ ٱلْكَـٰفِرُونَ إِلَّا فِى غُرُورٍ',
              //'Amman haazal lazee huwa jundul lakum yansurukum min doonir rahmaan; inilkaafiroona illaa fee ghuroor',
              LocaleKeys.ayah20.tr(),              '٢٠', (asset) {
            playAyah(asset);
          }, '067020'),
          ayahWidget(
              context,
              186,
              0,
              67,
              21,
              '      أَمَّنْ هَـٰذَا ٱلَّذِى يَرْزُقُكُمْ إِنْ أَمْسَكَ رِزْقَهُۥ ۚ بَل لَّجُّوا۟ فِى عُتُوٍّۢ وَنُفُورٍ',
              //'Amman haazal lazee yarzuqukum in amsaka rizqah; bal lajjoo fee ‘utuwwinw wa nufoor',
              LocaleKeys.ayah21.tr(),              '٢١', (asset) {
            playAyah(asset);
          }, '067021'),
          ayahWidget(
              context,
              186,
              0,
              68,
              22,
              '    أَفَمَن يَمْشِى مُكِبًّا عَلَىٰ وَجْهِهِۦٓ أَهْدَىٰٓ أَمَّن يَمْشِى سَوِيًّا عَلَىٰ صِرَٰطٍۢ مُّسْتَقِيمٍۢ',
              //'Afamai yamshee mukibban ‘alaa wajhihee ahdaaa ammany yamshee sawiyyan ‘alaa siratim mustaqeem',
              LocaleKeys.ayah22.tr(),              '٢٢', (asset) {
            playAyah(asset);
          }, '067022'),
          ayahWidget(
              context,
              186,
              0,
              66,
              23,
              'قُلْ هُوَ ٱلَّذِىٓ أَنشَأَكُمْ وَجَعَلَ لَكُمُ ٱلسَّمْعَ وَٱلْأَبْصَـٰرَ وَٱلْأَفْـِٔدَةَ ۖ قَلِيلًۭا مَّا تَشْكُرُونَ',
              //'Qul huwal lazee ansha akum wa ja’ala lakumus sam’a wal absaara wal af’idata qaleelam maa tashkuroon',
              LocaleKeys.ayah23.tr(),              '٢٣', (asset) {
            playAyah(asset);
          }, '067023'),
          ayahWidget(
              context,
              186,
              0,
              66,
              24,
              'قُلْ هُوَ ٱلَّذِى ذَرَأَكُمْ فِى ٱلْأَرْضِ وَإِلَيْهِ تُحْشَرُونَ',
              //'Qul huwal lazee zara akum fil ardi wa ilaihi tuhsharoon',
              LocaleKeys.ayah24.tr(),              '٢٤', (asset) {
            playAyah(asset);
          }, '067024'),
          ayahWidget(
              context,
              174,
              0,
              56,
              25,
              '    وَيَقُولُونَ مَتَىٰ هَـٰذَا ٱلْوَعْدُ إِن كُنتُمْ صَـٰدِقِينَ',
              //'Wa yaqooloona mataa haazal wa’du in kuntum saadiqeen',
              LocaleKeys.ayah25.tr(),              '٢٥', (asset) {
            playAyah(asset);
          }, '067025'),
          ayahWidget(
              context,
              186,
              0,
              66,
              26,
              'قُلْ إِنَّمَا ٱلْعِلْمُ عِندَ ٱللَّهِ وَإِنَّمَآ أَنَا۠ نَذِيرٌۭ مُّبِينٌۭ',
              //'Qul innamal ‘ilmu ‘indallaahi wa innamaaa ana nazeerum mubeen',
              LocaleKeys.ayah26.tr(),              '٢٦', (asset) {
            playAyah(asset);
          }, '067026'),
          ayahWidget(
              context,
              206,
              0,
              90,
              27,
              'فَلَمَّا رَأَوْهُ زُلْفَةًۭ سِيٓـَٔتْ وُجُوهُ ٱلَّذِينَ كَفَرُوا۟ وَقِيلَ هَـٰذَا ٱلَّذِى كُنتُم بِهِۦ تَدَّعُونَ',
              //'Falaammaa ra-awhu zulfatan seee’at wujoohul lazeena kafaroo wa qeela haazal lazee kuntum bihee tadda’oon',
              LocaleKeys.ayah27.tr(),              '٢٧', (asset) {
            playAyah(asset);
          }, '067027'),
          ayahWidget(
              context,
              216,
              0,
              100,
              28,
              'قُلْ أَرَءَيْتُمْ إِنْ أَهْلَكَنِىَ ٱللَّهُ وَمَن مَّعِىَ أَوْ رَحِمَنَا فَمَن يُجِيرُ ٱلْكَـٰفِرِينَ مِنْ عَذَابٍ أَلِيمٍۢ',
              //'Qul ara’aytum in ahlaka niyal laahu wa mam ma’iya aw rahimanaa famai-yujeerul kaafireena min ‘azaabin aleem',
              LocaleKeys.ayah28.tr(),              '٢٨', (asset) {
            playAyah(asset);
          }, '067028'),
          ayahWidget(
              context,
              206,
              0,
              86,
              29,
              'قُلْ هُوَ ٱلرَّحْمَـٰنُ ءَامَنَّا بِهِۦ وَعَلَيْهِ تَوَكَّلْنَا ۖ فَسَتَعْلَمُونَ مَنْ هُوَ فِى ضَلَـٰلٍۢ مُّبِينٍۢ',
              //'Qul huwar rahmaanu aamannaa bihee wa ‘alaihi tawakkalnaa fasata’lamoona man huwa fee dalaalim mubeen',
              LocaleKeys.ayah29.tr(),               '٢٩', (asset) {
            playAyah(asset);
          }, '067029'),
          ayahWidget(
              context,
              184,
              0,
              66,
              30,
              'قُلْ أَرَءَيْتُمْ إِنْ أَصْبَحَ مَآؤُكُمْ غَوْرًۭا فَمَن يَأْتِيكُم بِمَآءٍۢ مَّعِينٍۭ',
              //'Qul ara’aytum in asbaha maaa’ukum ghawran famai ya’teekum bimaaa’im ma’een',
              LocaleKeys.ayah30.tr(),               '٣٠', (asset) {
            playAyah(asset);
          }, '067030'),
        ],
      ),
    );
  }
}

Widget ayahWidget(
    BuildContext context,
    double height,
    double t1Height,
    double t2Height,
    int verseNumber,
    String verse,
    //String arabicInEnglish,
    String translate,
    String ayahNumberInArabic,
    void Function(String asset) function,
    String assetNumber) {
  return SizedBox(
    height: height,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Colors.black87,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                child: Text(verse,
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 27,
                        fontFamily: 'Scheherazade',
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Colors.black)),
              ),
              Row(
                children: [
                  const SizedBox(width: 50),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: t2Height,
                    child: Text(
                      '$translate',
                      maxLines: 5,
                      style: GoogleFonts.rubik(
                          color: Colors.green.shade900,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 86,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/symbol.png'),
                    )),
                    child: Center(
                      child: Text(
                        ayahNumberInArabic,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Scheherazade',
                            fontSize: 20),
                      ),
                    )),
                IconButton(
                    onPressed: () {
                      function(assetNumber);
                    },
                    icon: Icon(CupertinoIcons.play_arrow))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
