import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:photo_view/photo_view.dart';

class Hospital extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(title: Text("Sağlık Kuruluşları")),
      body: Center(
        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              ElevatedButton(
                style: style,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new HastaneList()),
                );},
                child: const Text('   Hastaneler   '),
              ),

              SizedBox(height: 25),

              ElevatedButton(
                style: style,
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new EczaneList()));},
                child: const Text('     Eczaneler     '),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                style: style,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => new AsiTakvimi()));
                },
                child: const Text('   Aşı Takvimi   '),
              ),

              SizedBox(height: 25),
            ]
        ),
      ),
    );
  }
}


class HastaneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(title: Text("Hastaneler")),
        body: Center(
      child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Rize Eğitim Ve Araştırma Hastanesi'),
                          SizedBox(height: 50),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Rize Ağız Ve Diş Sağlığı Merkezi'),
                          SizedBox(height: 50),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Güneysu Fizik Tedavi Merkezi'),
                          SizedBox(height: 50),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Özel Rize Diyaliz Merkezi'),
                          SizedBox(height: 50),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Rize Devlet Hastanesi'),
                          SizedBox(height: 50),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Özel Rize Göz Merkezi'),
                          SizedBox(height: 50),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Özel Rize Tıp Merkezi'),
                          SizedBox(height: 50),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 30,
                              width: 30,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.medical_services_outlined, color: Colors.red, size: 30),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Özel Şar Hastanesi'),
                          SizedBox(height: 50),
                        ]

                    ),

                    SizedBox(height: 50),

                    ElevatedButton(
                      style: style,
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Hastane()),
                      );},
                      child: const Text('Hastane Konumları'),
                    ),

                  ]

              ),

        )
    );
  }
}

class Hastane extends StatefulWidget {

  @override
  State<Hastane> createState() => __Hastane();

}

class __Hastane extends State<Hastane> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hastane Konumları'),
        ),
          body: const WebView(
            initialUrl: "https://www.google.com/maps/search/rize+hastane/@41.0372399,40.484714,12z/data=!3m1!4b1" ,
            javascriptMode: JavascriptMode.unrestricted,
          ),
      ),
    );
  }
}



class AsiTakvimi extends StatefulWidget {


  @override
  State<AsiTakvimi> createState() => __AsiTakvimi();

}

class __AsiTakvimi extends State<AsiTakvimi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aşı Takvimi'),
      ),
      body: Center(
      child: PhotoView(
        imageProvider: AssetImage("assets/asi.png"),
        backgroundDecoration: BoxDecoration(color: Colors.white)
      )
    ),
    );
  }
}

class EczaneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(title: Text("Eczaneler")),
        body: Center(
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Anadolu Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),
                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Avcı Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),
                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Bedir Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Bilsel Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Bizim Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Çamlıbel Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Can Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),
                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 30,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.local_pharmacy_outlined, color: Colors.red, size: 30),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 8),
                      Text('Deniz Eczanesi'),
                      SizedBox(height: 50),
                    ]

                ),

                SizedBox(height: 50),

                ElevatedButton(
                  style: style,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new Eczane()),
                  );},
                  child: const Text('Eczane Konumları'),
                ),

              ]

          ),

        )
    );
  }
}

class Eczane extends StatefulWidget {

  @override
  State<Eczane> createState() => __Eczane();

}

class __Eczane extends State<Eczane> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eczane Konumları'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/search/rize+eczane/@41.0372399,40.484714,12z/data=!3m1!4b1" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
