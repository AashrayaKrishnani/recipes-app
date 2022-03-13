import 'package:flutter/material.dart';
import 'package:my_recipes/screens/recipe_screen.dart';
import 'package:my_recipes/widgets/recipes_item.dart';

import '../models/recipe.dart';
import '../models/category.dart';

class RecipesScreen extends StatelessWidget {
  static const String route = '/recipes';

  final List<Recipe> filteredRecipes;

  const RecipesScreen({Key? key, required this.filteredRecipes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments;
    final Category category = routeArgs as Category;
    final List<Recipe> categoryRecipes = filteredRecipes
        .where((r) => r.categories.contains(category.title))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => InkWell(
            onTap: () => Navigator.of(context).pushNamed(RecipeScreen.route,
                arguments: categoryRecipes[index]),
            borderRadius: BorderRadius.circular(15),
            child: RecipesItem(recipe: categoryRecipes[index])),
        itemCount: categoryRecipes.length,
      ),
    );
  }
}
