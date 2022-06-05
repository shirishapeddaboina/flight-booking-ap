import 'package:flight_trips_app/screens/flight_detailed_screen.dart';
import 'package:flight_trips_app/services/flight_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_navigation.dart';
// import 'package:list_view/models/speaker.dart';
// import 'package:flutter/services.dart';

class FlightsDemo extends StatelessWidget {
  static const String routeName = '/flights';
  FlightsDemo({Key? key}) : super(key: key);
  final flights = FlightService().getFlights();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Avilable Flights',
          style: TextStyle(
            letterSpacing: 1.5,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(FontAwesomeIcons.userAstronaut),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color.fromARGB(187, 110, 255, 240), Colors.blue],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: flights.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: ListTile(
                  leading: Hero(
                    tag: flights[index].id,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        flights[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(flights[index].location),
                  subtitle: Text(flights[index].via),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pushNamed(context, FlightDetailsScreen.routeName,
                        arguments: flights[index]);
                  },
                ),
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: const BottonNav(),
    );
  }
}
