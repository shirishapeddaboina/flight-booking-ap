import 'package:flight_trips_app/models/flights.dart';
import 'package:flight_trips_app/services/flight_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_navigation.dart';

class FlightDetailsScreen extends StatelessWidget {
  FlightDetailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/FlightDetailsScreen';
  final flight = FlightService().getFlights();
  @override
  Widget build(BuildContext context) {
    final Flight sDetails =
        ModalRoute.of(context)!.settings.arguments as Flight;

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text(
          '${sDetails.location} Flights',
          style: const TextStyle(
            letterSpacing: 1.5,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(FontAwesomeIcons.bell),
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
      body: ListView(
        children: [
          Hero(
            tag: sDetails.id,
            child: Image.network(sDetails.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          'assets/images/Air-India-logo.png',
                          width: 140,
                        ),
                        const Text(
                          'Air India',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                              letterSpacing: 1.2),
                        ),
                      ],
                    ),
                    Row(children: [
                      const Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 16,
                        color: Colors.red,
                      ),
                      Text(
                        ' Route : New Delhi  ->  ${sDetails.location}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(
                          FontAwesomeIcons.calendar,
                          size: 16,
                          color: Colors.red,
                        ),
                        Text(
                          ' Fri, 06 May',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 60, 60, 60),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(
                          FontAwesomeIcons.user,
                          color: Colors.red,
                          size: 16,
                        ),
                        Text(
                          ' 1 Traveller | Economy',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 60, 60, 60),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                title: Text('Congratulations...'),
                                content: Text('Your Ticket has been booked.'),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottonNav(),
    );
  }
}
