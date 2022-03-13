import 'package:flutter/material.dart';
import 'package:my_recipes/screens/favorites_screen.dart';

import '../models/recipe.dart';
import '../widgets/main_drawer.dart';
import 'categories_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key, required this.availableRecipes})
      : super(key: key);
  final List<Recipe> availableRecipes;

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late final List<Map<String, Object>> _pages;
  int _selectedPage = -1;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'page': const CategoriesScreen(), 'title': 'Categories ✨'},
      {
        'page': FavoritesScreen(
          favorites:
              widget.availableRecipes.where((r) => r.isFavorite).toList(),
        ),
        'title': 'Favorites 🌟'
      },
    ];
  }

  void _changePage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedPage == -1) {
      var args = ModalRoute.of(context)?.settings.arguments;
      _selectedPage = int.tryParse(args.toString()) != null ? args as int : 0;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPage]['title'] as String),
      ),
      body: _pages[_selectedPage]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.category),
              label: 'Categories',
              backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favorites',
              backgroundColor: Theme.of(context).colorScheme.primary)
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const MainDrawer(),
    );
  }
}
