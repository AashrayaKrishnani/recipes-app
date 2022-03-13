import 'package:flutter/material.dart';

import '../models/recipe.dart';

class RecipesItem extends StatelessWidget {
  const RecipesItem({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  String get difficultyText {
    switch (recipe.difficulty) {
      case RecipeDifficulty.cakewalk:
        return 'CakeWalk';
      case RecipeDifficulty.easy:
        return 'Easy';
      case RecipeDifficulty.human:
        return 'Human';
      case RecipeDifficulty.superHuman:
        return 'Super Human';
      case RecipeDifficulty.chef:
        return 'Chef';
      default:
        return "Unknown";
    }
  }

  String get foodType {
    switch (recipe.foodType) {
      case RecipeFoodType.satvik:
        return 'Satvik';
      case RecipeFoodType.tamsic:
        return 'Tamsic';
      case RecipeFoodType.rajsic:
        return 'Rajsic';
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    final headlineStyle = Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(fontSize: 15, fontWeight: FontWeight.normal);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                recipe.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                width: 230,
                padding: const EdgeInsets.all(10),
                child: Text(
                  recipe.title,
                  style: const TextStyle(fontSize: 26, color: Colors.white),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.schedule),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    "${recipe.duration} min",
                    style: headlineStyle,
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.work),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    difficultyText,
                    style: headlineStyle,
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.health_and_safety),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    foodType,
                    style: headlineStyle,
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
