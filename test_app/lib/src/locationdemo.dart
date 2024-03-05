import 'package:flutter/material.dart';
import 'package:location/location.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp23 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp23> {
  Location location = Location();
  LocationData? currentLocation;

  @override
  void initState() {
    super.initState();
    initLocation();
  }

  void initLocation() async {
    var status = await location.requestPermission();
    if (status == PermissionStatus.granted) {
      location.onLocationChanged.listen((LocationData updatedLocation) {
        setState(() {
          currentLocation = updatedLocation;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Zomato Live Location Tracking'),
        ),
        body: Center(
          child: currentLocation != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Latitude: ${currentLocation?.latitude}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Longitude: ${currentLocation?.longitude}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
