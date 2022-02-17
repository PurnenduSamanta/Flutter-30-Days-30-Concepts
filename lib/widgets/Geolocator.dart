import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorPackage extends StatefulWidget {
  const GeolocatorPackage({Key? key}) : super(key: key);

  @override
  _GeolocatorPackageState createState() => _GeolocatorPackageState();
}

class _GeolocatorPackageState extends State<GeolocatorPackage> {
  Position? position;

   _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    try{
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      Position currentPosition = await Geolocator.getCurrentPosition(forceAndroidLocationManager: true,
          desiredAccuracy: LocationAccuracy.lowest);
      setState(() {
        position = currentPosition;
      });
    }
    catch(err)
     {
       print(err.toString());
     }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position==null?'Location not fetched':position.toString()),
            ElevatedButton(onPressed: () {
             _determinePosition();
            }, child: const Text('Get location'))
          ],
        ),
      ),
    );
  }
}
