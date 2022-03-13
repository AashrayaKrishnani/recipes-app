import 'package:flutter/material.dart';

import '/models/category.dart';
import 'models/recipe.dart';

const List<Category> categories = [
  Category(title: 'Ekadashi Special', color: Colors.amber),
  Category(title: 'QuickBites', color: Colors.blue),
  Category(title: 'Super Foods!', color: Colors.redAccent),
  Category(title: 'Lovely Sweets', color: Colors.orange),
  Category(title: 'Filling Salads', color: Colors.lime),
  Category(title: 'Immunity Boosters', color: Colors.orange),
  Category(title: 'Subji Satisfaction', color: Colors.greenAccent),
  Category(title: 'Rolls and Rotis', color: Colors.deepPurple),
  Category(title: 'Yummy Kanjis', color: Colors.amber),
  Category(title: 'Street Sass!', color: Colors.redAccent),
  Category(title: 'Soupy Goodness', color: Colors.cyanAccent),
];

List<Recipe> recipes = [
  Recipe(
    title: "Moong-Dal Paaysum",
    categories: ['Lovely Sweets', 'Super Foods!'],
    imageUrl: "assets/images/Moong-Dal Paaysum.jpg",
    difficulty: RecipeDifficulty.human,
    foodType: RecipeFoodType.satvik,
    duration: 50,
    preSteps: ["Soak the Moong Dal in Water for 3-4 hrs."],
    steps: [
      "Put the Moong Dal to Boil till it softens (Alternatively cook it in a cooker for 1-3 whistles).",
      "Pour water in another vessel, let it boil, add the Jaggery, and let it simmer to make a sweet syrup",
      "Add the Moong Dal, mix well, and let it cook for 5-10 minutes",
      "Saute the Mewa and dry fruits in a pan with 1-2 Tbsp of Ghee till then.",
      "Add in the Coconut Milk, little (not at all) of the dry-fruit and khoya mixture.",
      "Cook on medium flame for another 5-10minutes",
      "Finally Top off with remaining khoya, dry fruits and 1-2 tbsp of Ghee"
    ],
    ingredients: [
      "1 Cup Whole Green Moong dal",
      "1 Cup Jaggery",
      "1/4 Cup Water",
      "1 Cup Milk (prefer Coconut Milk for a Rich Taste)",
      "~100gm DryFruits (Optional)",
      "~150gm Khoya/Mewa (Optional)",
    ],
    isLactoseFree: false,
  ),
  Recipe(
    categories: [
      'Street Sass!',
      'QuickBites',
    ],
    title: 'Spaghetti with Tomato Sauce',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isLactoseFree: true,
    difficulty: RecipeDifficulty.easy,
    foodType: RecipeFoodType.tamsic,
    imageUrl: "assets/images/Spaghetti with Tomato Sauce.jpg",
  ),
  Recipe(
    categories: [
      'Street Sass!',
      'QuickBites',
    ],
    title: 'Toast Hawaii',
    imageUrl: 'assets/images/Toast Hawaii.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    difficulty: RecipeDifficulty.cakewalk,
    foodType: RecipeFoodType.tamsic,
    isLactoseFree: false,
  ),
  Recipe(
    categories: [
      'Street Sass!',
      'QuickBites',
    ],
    title: 'Classic Hamburger',
    imageUrl: 'assets/images/Classic Hamburger.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isLactoseFree: true,
    difficulty: RecipeDifficulty.easy,
    foodType: RecipeFoodType.tamsic,
  ),
  Recipe(
    title: 'Asparagus Salad with Cherry Tomatoes',
    categories: ['Filling Salads', 'Ekadashi Special', 'Immunity Boosters'],
    imageUrl: 'assets/images/Asparagus Salad with Cherry Tomatoes.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    difficulty: RecipeDifficulty.easy,
    foodType: RecipeFoodType.satvik,
    isLactoseFree: true,
  ),
  Recipe(
    title: 'Salad with Smoked Salmon',
    categories: ['Filling Salads', 'Immunity Boosters'],
    imageUrl: 'assets/images/Salad with Smoked Salmon.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isLactoseFree: true,
    difficulty: RecipeDifficulty.human,
    foodType: RecipeFoodType.rajsic,
  ),
  Recipe(
    title: 'Sanjeevni',
    categories: [
      'Yummy Kanjis',
      'Super Foods!',
      'Lovely Sweets',
      'Immunity Boosters'
    ],
    imageUrl: 'assets/images/Sanjeevni.jpg',
    duration: 15,
    foodType: RecipeFoodType.satvik,
    difficulty: RecipeDifficulty.easy,
    ingredients: [
      '2 tbsp of Isha Sanjeevni Health Mix (Alternative: Use Healthy flour like Ragi)',
      '1 and a half cup of water (Use Coconut milk or any other, for a richer taste)',
      '3-4 tbsp Jaggery (Reduce quantity if using unhealthy sugar instead)',
      'Handful of Dry-Fruits (Optional)',
    ],
    isLactoseFree: true,
    steps: [
      'Put 1 cup water to boil',
      'Mix the Sanjeevni in the remaining Half a Cup of water to form a paste like consistency.',
      'Add the paste to the boiling water, mix it, and allow it to cook for 5-8 min.',
      'Cut the Dry Fruits, saute in 1-2 tsp of ghee. (Optional)',
      'Put off the flame once the Sanjeevni has become moderately thick.',
      'Tip: To Check for thickness, dip a spoon in the mix and raise it, the mixture should Break while dropping down, and not flow like water.',
      'Mix in the Jaggery, taste a little to suit as per liking.',
      'Add the Dry-Fruits in the glasses first, and then Add the Sanjeevni mixture. Enjoy!'
    ],
  ),
  Recipe(
      title: 'Amritam',
      categories: [
        'Filling Salads',
        'Ekadashi Special',
        'Lovely Sweets',
        'Immunity Boosters'
      ],
      imageUrl: 'assets/images/Amritam.jpg',
      duration: 20,
      foodType: RecipeFoodType.satvik,
      difficulty: RecipeDifficulty.easy,
      ingredients: [
        '1/2 cup Whole Green Moong Dal',
        '1/4 cup Kabuli Chana',
        'Almonds and other dry-fruits of your liking.',
        '~1 tbsp Jaggery',
        '~2 tbsp Honey',
        'Dates',
        'Carrots, spinach and any other veggies of desire',
        'Bananas (highly recommended), Pomegranate, Apples, and other fruits of your likes'
      ],
      isLactoseFree: true,
      preSteps: [
        'Sprout the Moong Dal overnight',
        'Soak the Dry Fruits',
        'Soak the Dates in as little (drinkable) water as may be required, and do it in a separate vessel.'
            'Soak the Kabuli for 3-4 hours.'
      ],
      steps: [
        'Put the Kabuli Chana to boil (Alternatively, cook in a pressure cooker until soft)',
        'Repeat the same with the Moong Dal if you didn\'t sprout it, else DO NOT HEAT SPROUTS',
        'Chop the Vegetables and Fruits and add them in a bowl.',
        'Add in the Moong dal If it was sprouted',
        'Add the Jaggery, along with 1-2 tsp of Ghee',
        'Cut the Dry Fruits, add them in',
        'Add the Dates, along with the water.',
        'Strain the Boiled Kabuli Chana, add it in, and give a good mix.',
        'Add in the Honey, mix well, thank Krishna for such a gorgeous meal, pat yourself for the hardwork. Now enjoy! :D'
      ]),
  Recipe(
    title: 'Poriyal',
    categories: [
      'Subji Satisfaction',
      'Ekadashi Special',
      'Super Foods!',
      'Immunity Boosters',
      'Soupy Goodness'
    ],
    imageUrl: 'assets/images/Poriyal.jpg',
    duration: 25,
    foodType: RecipeFoodType.satvik,
    difficulty: RecipeDifficulty.human,
    ingredients: [
      '3 cup carrots chopped',
      '2 cups cabbage, finely chopped',
      '1 cup green peas.',
      '2 tbsp oil/ghee',
      '2 tsp mustard seeds',
      '2 tsp split black gram, skinless (Dhuli urad dal*)',
      '2 dry red chillies, broken',
      '8-10 curry leaves',
      '4 tbsp coconut, grated',
      '4 tsp lemon juice',
      'Salt to taste'
    ],
    isLactoseFree: true,
    steps: [
      'Heat the oil in a pan on medium heat. Add the mustard seeds and black gram. Stir lightly until the mustard seeds splutter and the gram is lightly browned.',
      'Add the carrot, cabbage and peas; stir well',
      'Add the red chillies and curry leaves; stir well',
      'Remove from heat',
      'Add the grated coconut, lemon juice and salt; mix well. Serve hot.',
    ],
  ),
  Recipe(
    title: 'Date Roll',
    categories: [
      'Lovely Sweets',
      'Rolls and Rotis',
      'Immunity Boosters',
    ],
    imageUrl: 'assets/images/Date Roll.jpg',
    duration: 30,
    foodType: RecipeFoodType.rajsic,
    difficulty: RecipeDifficulty.human,
    ingredients: [
      '15 dates',
      '15 whole cashews',
      '250g Refined Flour (Use Ragi or any other healthy flour if possible)',
      '1/4 tsp baking powder',
      '~150g Jaggery',
      '125g Butter',
    ],
    isLactoseFree: true,
    steps: [
      'Preheat the oven to 180C or 350F',
      'Remove the seeds from the dates and stuff one cashew nut inside each date. The larger end of the cashew should be visble outside the date.'
          'Sift the flour with the baking powder. Keep aside.',
      'Put jaggery and butter in a bowl and beat until light and creamy.',
      'Add the flour little by little, and mix well until a dough is formed.',
      'Divide the dough into 15 portions and shape each into a ball.',
      'Using the thumb, make a dent in the middle of the ball.',
      'Place a stuffed date inside the ball, ensuring that it is only half covered wth the dough and the cashew is still visible.',
      'Place on a reased baking tray at some distance from each other.',
      'Bake for 25 minutes in the oven and remove.',
      'Cool and serve',
    ],
  ),
  Recipe(
    title: 'Banana Roti',
    categories: [
      'Lovely Sweets',
      'Rolls and Rotis',
      'Super Foods!',
      'Immunity Boosters',
    ],
    imageUrl: 'assets/images/Banana Roti.jpg',
    duration: 40,
    foodType: RecipeFoodType.satvik,
    difficulty: RecipeDifficulty.human,
    ingredients: [
      '2-3 ripe bananas, peeled, chopped',
      '1 cup milk',
      '2 tbsp podered sugar',
      '3 cups wheat flour',
      '2 tbsp oil/ghee',
      '1/2 tsp salt'
    ],
    isLactoseFree: true,
    steps: [
      'Blend the bananas in a blender',
      'Add the milk and sugar and whisk until smooth. Set aside.',
      'In a large bowl, combine the wheat flour and salt. Add the oil and then the banana misture.',
      'Mix everything into pliable dough and let it rest for about half an hour.'
          'Divide the dough into small portions and roll into balls.',
      'Roll out into small chapattis/rotis',
      'Roast tthem on a Tawa(griddle)until golden flecks show on both sides.',
      'Serve Warm ;D'
    ],
  ),
];
