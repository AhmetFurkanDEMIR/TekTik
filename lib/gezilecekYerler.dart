import 'package:flutter/material.dart';

class GezilecekList extends StatefulWidget {
  const GezilecekList({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<GezilecekList> createState() => _GezilecekList();
}

class _GezilecekList extends State<GezilecekList> {

  late PageController _pageController;
  List<String> images = [
    "assets/gezilecek/rizekalesi.jpeg",
    "assets/gezilecek/zilkalesi.jpeg",
    "assets/gezilecek/pokutyaylasi.jpeg",
    "assets/gezilecek/botanikcaybahcesi.jpeg",
    "assets/gezilecek/ayderyaylasi.jpeg",
    "assets/gezilecek/anzeryaylasi.jpeg",
    "assets/gezilecek/kizkalesi.jpeg",
    "assets/gezilecek/yedigoller.jpeg",
    "assets/gezilecek/pilekimagrasi.jpeg",
    "assets/gezilecek/cagrankayamagrasi.jpeg",
    "assets/gezilecek/kursunlucamii.jpeg",
    "assets/gezilecek/mesekoyyaylasi.jpeg",
    "assets/gezilecek/elevityaylasi.jpeg",
    "assets/gezilecek/kackardaglari.jpeg",
    "assets/gezilecek/cihakalesi.jpeg",
    "assets/gezilecek/vercenikyaylasi.jpeg",
    "assets/gezilecek/simsirlicamii.jpeg",
    "assets/gezilecek/kalebala.jpeg"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {

          });
        },
        itemBuilder: (context, pagePosition) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(images[pagePosition]),
          );
        });
  }


}