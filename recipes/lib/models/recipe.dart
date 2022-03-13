enum RecipeDifficulty { cakewalk, easy, human, superHuman, chef }
enum RecipeFoodType { tamsic, rajsic, satvik }

class Recipe {
  final String title;
  final List<String> categories;
  final List<String> preSteps;
  final List<String> steps;
  final List<String> ingredients;
  final String imageUrl;
  final RecipeDifficulty difficulty;
  final RecipeFoodType foodType;
  final int duration;
  final bool isLactoseFree;
  bool isFavorite = false;

  Recipe(
      {required this.title,
      required this.categories,
      required this.steps,
      required this.ingredients,
      required this.imageUrl,
      required this.difficulty,
      required this.foodType,
      required this.duration,
      this.preSteps = const [],
      this.isLactoseFree = false});
}
