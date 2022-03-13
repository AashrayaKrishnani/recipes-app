import 'package:flutter/material.dart';

import '../models/recipe.dart';
import '../widgets/recipes_item.dart';
import 'recipe_screen.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Recipe> favorites;
  const FavoritesScreen({
    Key? key,
    required this.favorites,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.favorites.isEmpty
        ? Center(
            child: Text(
              'No favorites Yet.. Consider Adding Some!',
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) => InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(RecipeScreen.route,
                        arguments: widget.favorites[index])
                    .then((value) => Navigator.of(context)
                        .pushReplacementNamed('/', arguments: 1)),
                borderRadius: BorderRadius.circular(15),
                child: RecipesItem(recipe: widget.favorites[index])),
            itemCount: widget.favorites.length,
          );
  }
}
