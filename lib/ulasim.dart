import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SeferSaatleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(title: Text("Ulaşım")),
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
                            'assets/otobus.png',
                            fit: BoxFit.contain,
                            height: 275,
                          ),
                          SizedBox(height: 100),
                        ]

                    ),

                    ElevatedButton(
                      style: style,
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Ulasim()),
                      );},
                      child: const Text('Durak Konumları'),
                    ),

                  ]

              ),
            )
        )
    );
  }
}

class Ulasim extends StatefulWidget {

  @override
  State<Ulasim> createState() => __Ulasim();

}

class __Ulasim extends State<Ulasim> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Durak Konumları'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/search/rize+otob%C3%BCs+dura%C4%9F%C4%B1/@41.0310634,40.5184132,13.17z" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}