import '../models/hotels.dart';

class HotelsService {
  List<Hotel> getHotel() {
    List<Hotel> hotel = [
      Hotel(
        100,
        'Senghai hotel',
        'Delhi, Mumbai, Coimbatore, Madurai',
        'assets/images/hotel1.webp',
      ),
      Hotel(
        101,
        'Taj hotel',
        'Mumbai(five star)',
        'assets/images/hotel2.jpg',
      ),
      Hotel(
        102,
        'Jannat hotel',
        'Chennai, Delhi',
        'assets/images/hotel3.jpg',
      ),
      Hotel(
        103,
        'Hotel Transalvenia',
        'Pune',
        'assets/images/hotel4.webp',
      ),
      Hotel(
        104,
        'Punjabi Dhaba',
        'Punjab',
        'assets/images/hotel6.webp',
      ),
      Hotel(
        105,
        'S.H hotel',
        'Delhi,Noida',
        'assets/images/hotel7.webp',
      ),
      Hotel(
        106,
        'Jatin villa',
        'Haryana',
        'assets/images/hotel8.jpg',
      ),
      Hotel(
        106,
        'Shang chii hotel',
        'Multiverse of madness',
        'assets/images/hotel10.jpg',
      ),
    ];
    return hotel;
  }
}
