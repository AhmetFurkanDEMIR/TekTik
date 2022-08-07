import 'package:flutter/material.dart';

import 'package:kapsul_sia_doz/Eglence.dart';
import 'package:kapsul_sia_doz/gocidaresi.dart';
import 'package:kapsul_sia_doz/konum.dart';
import 'package:kapsul_sia_doz/translate.dart';
import 'package:kapsul_sia_doz/ulasim.dart';

import 'Döviz.dart';
import 'Restoran.dart';
import 'Spor.dart';
import 'acilNumaralar.dart';
import 'gezilecekYerler.dart';
import 'hospital.dart';
import 'ibadet.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Size nasıl yardımcı olabilirim ?")),
      body: Center(
        child: Container(

          child : Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.local_hospital, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hospital()),
                        );
                      },
                    )
                ),
                Text('Sağlık Kuruluşları'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.phone, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AcilNumaralar()),
                        );
                      },
                    )
                ),
                Text('Acil Numaralar'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.gamepad_outlined, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eglence(title: '',)),
                        );
                      },
                    )
                ),
                Text('Eğlenelim Öğrenelim'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.directions_walk, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GezilecekList(title: '',)),
                        );
                      },
                    )
                ),
                Text('Gezilecek Yerler'),

                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.directions_bus, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeferSaatleri()),
                        );
                      },
                    )
                ),
                Text('Ulaşım'),

                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.home_filled, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Spor()),
                        );
                      },
                    )
                ),
                Text('Konaklama'),
              ],
            ),

            SizedBox(width: 30),
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.home_work_rounded, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DevletKurumlari()),
                        );
                      },
                    )
                ),
                Text('Devlet Kurumları'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.fastfood, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Yemekler()),
                        );
                      },
                    )
                ),
                Text('Yemekler'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.location_on_outlined, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Location()),
                        );
                      },
                    )
                ),
                Text('Konumum'),
                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.translate, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Translate()),
                        );
                      },
                    )
                ),
                Text('Çeviri'),

                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.mosque, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ibadet()),
                        );
                      },
                    )
                ),
                Text('ibadethaneler'),

                SizedBox(height: 30),

                new SizedBox(
                    height: 50,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.money, color: Colors.red, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Doviz()),
                        );
                      },
                    )
                ),
                Text('Kur/Nakit işlemleri'),
              ],
            ),



          ],
        ),
        ),
      ),
    );
  }
}