// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my_recipes/data.dart';
import 'package:my_recipes/screens/filters_screen.dart';
import 'package:my_recipes/screens/homescreen.dart';
import 'package:my_recipes/screens/recipe_screen.dart';
import 'package:my_recipes/screens/recipes_screen.dart';

import 'models/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  List<Recipe> _filteredRecipes = recipes;
  var _filters = {
    'Satvik': {
      'value': false,
      'subtitle': 'Healthy Pranic Superfoods! 🍲',
    },
    'Simple': {
      'value': false,
      'subtitle': 'Easy to Make, Delicious to taste! 🧑‍🍳',
    },
    'Quick': {
      'value': false,
      'subtitle': 'Be the Flash, in a Flash! 🌩',
    },
    'Lactose Free': {
      'value': false,
      'subtitle': 'Seeing off all of them cows! 😝',
    },
  };

  void _updateFilters(var filters) {
    setState(() {
      _filters = filters;
      _filterRecipes();
    });
  }

  void _filterRecipes() {
    bool satvik = _filters['Satvik']?['value'] as bool;
    bool simple = _filters['Simple']?['value'] as bool;
    bool quick = _filters['Quick']?['value'] as bool;
    bool lactoseFree = _filters['Lactose Free']?['value'] as bool;

    setState(() {
      _filteredRecipes = recipes
          .where((recipe) =>
              (!satvik || recipe.foodType == RecipeFoodType.satvik) &&
              (!quick || recipe.duration < 30) &&
              (!simple ||
                  (recipe.difficulty != RecipeDifficulty.chef &&
                      recipe.difficulty != RecipeDifficulty.superHuman)) &&
              (!lactoseFree || recipe.isLactoseFree))
          .toList();
    });
  }

  List<Recipe> get categories {
    return recipes.where((Recipe) => false).toList();
  }

  void _toggleFavorite(Recipe recipe) {
    setState(() {
      if (_filteredRecipes.contains(recipe)) {
        _filteredRecipes[_filteredRecipes.indexOf(recipe)].isFavorite =
            _filteredRecipes[_filteredRecipes.indexOf(recipe)].isFavorite
                ? false
                : true;
      }
    });
  }

  // bool _isFavorite(Recipe recipe) {
  //   return _filteredRecipes.contains(recipe) &&
  //       _filteredRecipes[_filteredRecipes.indexOf(recipe)].isFavorite;
  // }

  void _getFilters() => _filters;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(
                fontFamily: 'Raleway',
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w700,
              ),
            ),
      ),
      routes: {
        "/": (ctx) => Homescreen(
              availableRecipes: _filteredRecipes,
            ), // Route: BuilderFunction(context)
        RecipesScreen.route: (ctx) => RecipesScreen(
              filteredRecipes: _filteredRecipes,
            ),
        RecipeScreen.route: (ctx) => RecipeScreen(toggleFav: _toggleFavorite),
        FiltersScreen.route: (ctx) => FiltersScreen(
            getFilters: _getFilters, updateFilters: _updateFilters),
      },
    );
  }
}
