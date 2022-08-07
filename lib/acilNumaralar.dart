import 'package:flutter/material.dart';

class AcilNumaralar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Acil Numaralar")),
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
                        icon: new Icon(Icons.phone, color: Colors.red, size: 40),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 8),
                  Text('112'),
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
                  icon: new Icon(Icons.medical_services, color: Colors.red, size: 40),
                  onPressed: (){

                  },
                )
            ),
            SizedBox(width: 8),
            Text('Ambulans : 112'),
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
                        icon: new Icon(Icons.fireplace, color: Colors.red, size: 40),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 8),
                  Text('İtfaiye : 110'),
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

                        },
                      )
                  ),
                  SizedBox(width: 8),
                  Text('Polis : 155'),
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

                        },
                      )
                  ),
                  SizedBox(width: 8),
                  Text('Jandarma : 156'),
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