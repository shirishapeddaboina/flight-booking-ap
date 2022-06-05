// import 'package:flight_trips_app/screens/flight_detailed_screen.dart';
import 'package:flight_trips_app/screens/hotel_detailed_screen.dart';
import 'package:flight_trips_app/services/hotel_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_navigation.dart';

class HotelsDetails extends StatelessWidget {
  static const String routeName = '/hotels';
  HotelsDetails({Key? key}) : super(key: key);
  final hotel = HotelsService().getHotel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Avilable Hotels',
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
        itemCount: hotel.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: ListTile(
                  leading: Hero(
                    tag: hotel[index].id,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        hotel[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(hotel[index].location),
                  subtitle: Text(hotel[index].via),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pushNamed(context, HotelsDetailsScreen.routeName,
                        arguments: hotel[index]);
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
