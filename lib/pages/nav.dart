import 'package:flutter/material.dart';
import 'package:hcfood_ui/pages/profile.dart';
import 'package:hcfood_ui/utils/theme.dart';

import 'home.dart';
import 'keranjang.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  List widgetMenu = [const Home(), const Keranjang(), const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetMenu.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30),
            label: '',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        fixedColor: kSecondColor,
      ),
    );
  }
}
