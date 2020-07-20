import 'dart:io';

import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';
import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getData() async {
    print('start');
    Response response = await get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02');

    if (response.statusCode == 200) {
      print(response);
    } else {
      print(response.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
    );
  }
}
/*
class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
    //getData();
  }

  void getData() async {
    print('start');
    try {
      Response response = await get(
          'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02');
      print('done');
      print(response.statusCode);
    }
    catch(e)
    {
      print(e);
    }
    //Response response = await get('https://community-open-weather-map.p.rapidapi.com/weather?callback=test&id=2172797&units=%2522metric%2522%20or%20%2522imperial%2522&mode=xml%252C%20html&q=London%252Cuk');
//    final url = 'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02';
//    final client = new HttpClient();
//    print('done');
//    final request = await client.getUrl(Uri.parse(url));
//    print('done');
//    final response = await request.close();
//    print(response.statusCode);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
//      body: Center(
//        child: RaisedButton(
//          onPressed: () {
//            //Get the current location
//            getLocation();
//          },
//          child: Text('Get Location'),
//        ),
//      ),
    );
  }
}
*/