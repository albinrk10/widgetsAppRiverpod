import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDraweIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDraweIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDraweIndex = value;
          });
        },
        children: const [
          NavigationDrawerDestination(
              icon: Icon(Icons.add), label: Text('Home Screen')),
          NavigationDrawerDestination(
              icon: Icon(Icons.add_shopping_cart_rounded),
              label: Text('Otra Pantalla'))
        ]);
  }
}
