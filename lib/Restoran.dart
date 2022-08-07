import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Yemekler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(title: Text("Yemekler")),
        body: Center(
            child:

            Container(

              child : Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Image.asset(
                            'assets/mihlama.jpeg',
                            fit: BoxFit.contain,
                            height: 60,
                          ),
                          SizedBox(width: 8),
                          Text('Mıhlama'),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Image.asset(
                            'assets/pepecura.jpeg',
                            fit: BoxFit.contain,
                            height: 60,
                          ),
                          SizedBox(width: 8),
                          Text('Pepeçura'),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Image.asset(
                            'assets/karalahana.jpeg',
                            fit: BoxFit.contain,
                            height: 60,
                          ),
                          SizedBox(width: 8),
                          Text('Karalahana'),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Image.asset(
                            'assets/süt_helvasi.jpeg',
                            fit: BoxFit.contain,
                            height: 60,
                          ),
                          SizedBox(width: 8),
                          Text('Süt Helvası'),
                          SizedBox(height: 90),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Image.asset(
                            'assets/laz_boregi.jpeg',
                            fit: BoxFit.contain,
                            height: 60,
                          ),
                          SizedBox(width: 8),
                          Text('Laz Böreği'),
                          SizedBox(height: 90),
                        ]

                    ),

                    ElevatedButton(
                      style: style,
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Restoran()),
                      );},
                      child: const Text('Restoran Konumları'),
                    ),

                  ]

              ),
            )
        )
    );
  }
}


class Restoran extends StatefulWidget {

  @override
  State<Restoran> createState() => __Restoran();

}

class __Restoran extends State<Restoran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restoranlar'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/search/rize+restaurant/@41.0374565,40.4847139,12z/data=!3m1!4b1" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}