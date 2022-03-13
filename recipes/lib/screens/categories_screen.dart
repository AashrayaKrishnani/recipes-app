import 'package:flutter/material.dart';
import 'package:my_recipes/models/category.dart';
import 'package:my_recipes/screens/recipes_screen.dart';
import 'package:my_recipes/widgets/categories_item.dart';

import '../data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  Widget wrapCategoryItem(BuildContext context, Category category) {
    return InkWell(
      child: CategoriesItem(category: category),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context)
            .pushNamed(RecipesScreen.route, arguments: category)
            .then((value) => Navigator.of(context).pushReplacementNamed('/'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      children: categories
          .map((category) => wrapCategoryItem(context, category))
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
