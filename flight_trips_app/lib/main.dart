import 'package:flight_trips_app/screens/flight_detailed_screen.dart';
import 'package:flight_trips_app/screens/flightsDetails.dart';
import 'package:flight_trips_app/screens/home_screen.dart';
import 'package:flight_trips_app/screens/hotel_detailed_screen.dart';
import 'package:flight_trips_app/screens/hotelsDetails.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const SpeakerDemoApp());
}

class SpeakerDemoApp extends StatelessWidget {
  const SpeakerDemoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        FlightsDemo.routeName: (context) => FlightsDemo(),
        HotelsDetails.routeName: (context) => HotelsDetails(),
        HotelsDetailsScreen.routeName: (context) => HotelsDetailsScreen(),
        FlightDetailsScreen.routeName: (context) => FlightDetailsScreen(),
      },
    );
  }
}
