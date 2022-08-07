import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {

  late String latitude;
  late String longitude;
  late String MyLocation="Enlem : "+"41.028396"+", Boylam : "+"40.5134692";

  Future<void> permisionandLoc() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude.toString();
      longitude = position.longitude.toString();

    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    permisionandLoc();
    return Scaffold(
        appBar: AppBar(title: Text("Konumum")),
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
                                icon: new Icon(Icons.location_city, color: Colors.red, size: 40),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Rize'),
                          SizedBox(height: 60),
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
                                icon: new Icon(Icons.location_on_outlined, color: Colors.red, size: 40),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text(MyLocation),
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