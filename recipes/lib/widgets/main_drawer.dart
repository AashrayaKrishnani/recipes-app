import 'dart:ui';

import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function handler) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w900, color: Colors.white),
      ),
      onTap: () => handler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              'Chef\'s Deck 🍳',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed'),
            ),
          ),
          buildListTile('Recipes', Icons.restaurant,
              () => Navigator.of(context).pushReplacementNamed('/')),
          buildListTile(
              'Filters',
              Icons.restaurant_menu,
              () => Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.route)),
        ],
      ),
    );
  }
}
