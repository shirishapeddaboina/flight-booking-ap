import 'package:flutter/material.dart';

class BottonNav extends StatelessWidget {
  const BottonNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      onTap: (int i) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
