import 'package:flutter/material.dart';

class Eglence extends StatefulWidget {
  const Eglence({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Eglence> createState() => _Eglence();
}

class _Eglence extends State<Eglence> {

  late String _bilmece="";

  late int count = 0;

  static const List<String> bilmece = ["Ağızı haho, deliği vizo, zaçada ziço, zaçada ziço Küp",
    "Alaca bulaca, çıkar ağaca Fasulye",
    "Altı kül, üstü kül, içine bir sarı gül Pilekide Mısır Ekmeği",
    "Alttan yer, Ustten çıkarur Rende",
    "Altı çeğnem, usti çeğnem, içinde bir garip nenem Ekmek",
    """
  Yattum Allah
  Yattum Allah, kaldur beni
  Nur göline, daldır beni
  Soldan döndüm sağuma
  Sığındum Allah’uma
  Ezan sesi kulağuma
  Kur’an sesi kulağuma
  Melekler şahit olsun
  Dinume, imanuma
  Eldumse Lailaheillallah
  Kalktumsa Elhamdülillah
  Altun, inci kapisi""",
    """
  Nur Eyle

  Yarabbi, ya nur eyle
  Ummetuni kuş eyle
  Haçan kebre geluruk
  İmanı yoldaş eyle

  Ayı gördüm
  Ayı gördüm Allah, Eşhedülillah
  Bu ne güzel aydur, Elhamdülillah
  Ay gördüm, nur gördüm
  Peygamberumuzun nuruni gördüm
  Günahuni affettum, sevabuma şükrettum.
  Elifbası Kur’an’dur, cümlemizun işidur"""];

  @override
  Widget build(BuildContext context) {

    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Eğlenelim Öğrenelim")
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Text(_bilmece),
              SizedBox(height: 50),

              ElevatedButton(
                style: style,
                onPressed: () {

                  _getBilmece();
                },
                child: const Text('Yeni bilmece/tekerleme üret'),
              ),
            ]
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _getBilmece() {
    setState(() {
      _bilmece=bilmece[count];

      count+=1;

      if(count==7){
        count=0;
      }
    });
  }
}