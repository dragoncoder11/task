import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/features/home/ui/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;
  List pages = const [
    ShopScreen(),
    ShopScreen(),
    ShopScreen(),
    ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 244, 244),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: lightBrown,
        unselectedItemColor: navyBlue,
        currentIndex: selectedItem,
        onTap: (value) {
          setState(() {
            selectedItem = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shop), label: 'Shop'),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                child: Stack(children: [
                  Center(
                      child: Icon(
                    FontAwesomeIcons.cartShopping,
                  )),
                  Center(
                      child: Icon(
                    FontAwesomeIcons.cartShopping,
                    size: 18,
                    color: Colors.white,
                  )),
                ]),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: 'Account'),
        ],
      ),
      body: pages.elementAt(selectedItem),
    );
  }
}
