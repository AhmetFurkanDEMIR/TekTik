import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class DevletKurumlari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Devlet Kurumları")),
        body: Center(
            child:

            Container(

              child : Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 40,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.directions_run_rounded, color: Colors.red, size: 40),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => GocIdaresi()),
                                  );
                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Göç idaresi'),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 40,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.local_police_outlined, color: Colors.red, size: 40),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Emniyet()),
                                  );
                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Emniyet'),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 40,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.account_balance, color: Colors.red, size: 40),
                                onPressed: (){

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Adliye()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Adliye'),
                          SizedBox(height: 90),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 40,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.home_work_rounded, color: Colors.red, size: 40),
                                onPressed: (){

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Belediye()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Belediye'),
                          SizedBox(height: 90),
                        ]

                    ),

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 40,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.home_work_rounded, color: Colors.red, size: 40),
                                onPressed: (){

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Valilik()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Valilik'),
                          SizedBox(height: 90),
                        ]

                    ),

                  ]

              ),
            )
        )
    );
  }
}


class GocIdaresi extends StatefulWidget {

  @override
  State<GocIdaresi> createState() => __GocIdaresi();

}

class __GocIdaresi extends State<GocIdaresi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Göç İdaresi'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/place/Rize+Valili%C4%9Fi/@41.028396,40.5134692,17z/data=!3m1!4b1!4m5!3m4!1s0x40667ae728f9de09:0x67e7a986de82d605!8m2!3d41.028392!4d40.5156579" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


class Emniyet extends StatefulWidget {

  @override
  State<Emniyet> createState() => __Emniyet();

}

class __Emniyet extends State<Emniyet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emniyet Müdürlüğü'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps?q=rize+emniyet+m%C3%BCd%C3%BCrl%C3%BC%C4%9F%C3%BC&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjnsP3O7qz5AhWAVfEDHUSEA_sQ_AUoAXoECAIQAw" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


class Adliye extends StatefulWidget {

  @override
  State<Adliye> createState() => __Adliye();

}

class __Adliye extends State<Adliye> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adliye'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/place/Rize+Adalet+Saray%C4%B1/@41.025685,40.5360599,17z/data=!3m1!4b1!4m5!3m4!1s0x40667ac0afa42bf7:0xe09ccd4f2d7f97b3!8m2!3d41.0257808!4d40.5382155" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


class Belediye extends StatefulWidget {

  @override
  State<Belediye> createState() => __Belediye();

}

class __Belediye extends State<Belediye> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belediye'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/place/Rize+Belediyesi/@41.02678,40.5154263,17z/data=!4m5!3m4!1s0x40667ae65d4c493f:0x4862f9607ceeb252!8m2!3d41.026776!4d40.517615" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


class Valilik extends StatefulWidget {

  @override
  State<Valilik> createState() => __Valilik();

}

class __Valilik extends State<Valilik> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valilik'),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/place/Rize+Valili%C4%9Fi/@41.028396,40.5134692,17z/data=!3m1!4b1!4m5!3m4!1s0x40667ae728f9de09:0x67e7a986de82d605!8m2!3d41.028392!4d40.5156579" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}