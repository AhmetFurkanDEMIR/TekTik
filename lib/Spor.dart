import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Spor extends StatefulWidget {

  @override
  State<Spor> createState() => __Spor();

}

class __Spor extends State<Spor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konaklama'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/search/rize+otel/@40.9569795,40.1703799,9z/data=!3m1!4b1" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}