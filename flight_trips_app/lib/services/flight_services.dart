import '../models/flights.dart';

class FlightService {
  List<Flight> getFlights() {
    List<Flight> flight = [
      Flight(
        100,
        'Chennai',
        'Via - Delhi, Mumbai, Coimbatore, Madurai',
        'assets/images/chennai_flight.webp',
      ),
      Flight(
        101,
        'Goa',
        'Via - Delhi , Mumbai, Bangalore, Ahmedabad',
        'assets/images/gao_flights.jpg',
      ),
      Flight(
        102,
        'Hyderabad',
        'Via - Chennai, Mumbai, Bangalore, Delhi',
        'assets/images/hyderabad-flight.jpg',
      ),
      Flight(
        103,
        'Delhi',
        'Via - Mumbai, Pune, Bangalore, Chennai',
        'assets/images/delhi_flight.jpg',
      ),
      Flight(
        104,
        'Kolkata',
        'Via - Delhi, Mumbai, Bangalore, Pune',
        'assets/images/kolkata_flight.webp',
      ),
      Flight(
        105,
        'Bangalore',
        'Via - Delhi, Pune, Mumbai, Kolkata',
        'assets/images/banglore_flight.webp',
      ),
      Flight(
        106,
        'TamilNadu',
        'Via - Delhi ,Chennai, Bangalore, Ahmedabad',
        'assets/images/tamil_flight.jpg',
      ),
    ];
    return flight;
  }
}
