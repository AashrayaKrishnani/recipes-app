import 'package:flutter/material.dart';
import 'package:my_recipes/models/recipe.dart';

class RecipeScreen extends StatefulWidget {
  final Function toggleFav;
  const RecipeScreen({Key? key, required this.toggleFav}) : super(key: key);

  static const String route = 'recipe';

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  Widget buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget buildContainer(Widget child, height) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 5, color: Colors.grey)),
        height: height,
        width: 250,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Recipe recipe = ModalRoute.of(context)?.settings.arguments as Recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child:
                  Image.asset(recipe.imageUrl, height: 300, fit: BoxFit.cover),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(recipe.ingredients[index],
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                      ),
                      color: Theme.of(context).colorScheme.secondary),
                  itemCount: recipe.ingredients.length,
                ),
                150.0),
            if (recipe.preSteps.isNotEmpty)
              buildSectionTitle(context, 'Pre-Steps'),
            if (recipe.preSteps.isNotEmpty)
              buildContainer(
                  ListView.builder(
                    itemBuilder: (ctx, index) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('#${index + 1}'),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(recipe.preSteps[index]),
                        ),
                        const Divider()
                      ],
                    ),
                    itemCount: recipe.preSteps.length,
                  ),
                  100.0),
            buildSectionTitle(context, 'Instructions'),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                            child: Text('#${index + 1}'),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary),
                        title: Text(recipe.steps[index]),
                      ),
                      const Divider()
                    ],
                  ),
                  itemCount: recipe.steps.length,
                ),
                160.0)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(recipe.isFavorite ? Icons.star : Icons.star_border),
        tooltip: 'Toggle Favorite 😊',
        onPressed: () {
          setState(() {
            widget.toggleFav(recipe);
          });
        },
      ),
    );
  }
}
