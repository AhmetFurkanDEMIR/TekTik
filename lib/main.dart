import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'TekTık'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _timeString;
  late String dropdownValue = 'TR';

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tittle.png',
              fit: BoxFit.contain,
              height: 60,
            ),
            Container(
                padding: const EdgeInsets.all(8.0))
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.directions_run_rounded),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                  height: 60,
                  width: 60,
                  child: new IconButton(
                    padding: new EdgeInsets.all(0.0),
                    icon: new Icon(Icons.access_time_outlined, color: Colors.red, size: 60),
                    onPressed: (){

                    },
                  )
              ),
              SizedBox(height: 8),
              Text(_timeString),

              SizedBox(height: 35),

              new SizedBox(
                  height: 60,
                  width: 60,
                  child: new IconButton(
                    padding: new EdgeInsets.all(0.0),
                    icon: new Icon(Icons.cloud_queue , color: Colors.red, size: 60),
                    onPressed: (){

                    },
                  )
              ),
              SizedBox(height: 8),
              Text("Parçalı Bulutlu"),

              SizedBox(height: 35),

              new SizedBox(
                  height: 60,
                  width: 60,
                  child: new IconButton(
                    padding: new EdgeInsets.all(0.0),
                    icon: new Icon(Icons.navigation_outlined , color: Colors.red, size: 60),
                    onPressed: (){

                    },
                  )
              ),
              SizedBox(height: 8),
              Text("Rize"),

              SizedBox(height: 35),

              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.language, color: Colors.red),
                elevation: 40,
                style: const TextStyle(color: Colors.red),
                underline: Container(
                  height: 5,
                  color: Colors.red,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['TR', 'EN', 'AR']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style: TextStyle(fontSize: 20),),
                  );
                }).toList(),
              ),


        ]
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _getTime() {
    final String formattedDateTime =
    DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
    });
  }
}
