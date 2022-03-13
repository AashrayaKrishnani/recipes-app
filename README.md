# MyRecipesApp
* An App I had made while learning **Flutter Navigation**. 
* Not to forget, I have shared **my secret top 10 healthy recipes** in there too ;p

# Foreword
* The app in itself is **Fairly Simple**, tho the **amount of learning** I had while making it is what makes it **memorable** for me! 💟

## What Inspired Me to make this.

* The **Udemy** course that I am following to _learn_ **Dart** & **Flutter** by **Maximilian Schwarzmüller**.
* I **highly recommend** this course for **anyone willing** to **make efficient apps** with **relative ease**! :D
* [Link to the Course](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## My Experience

I learned quite a lot about **extremely useful** widgets like the **layout widgets**: GridView, ListView, Expanded, ListTile, SwitchListTile to name a few, the **Navigator** class that manages the **stack** of active pages in the app; about **named routes** and how they make **internal navigation** so **seemless**; and about the **Drawer** (Hamburger Menu) widget which is so common in today's apps. I also **enjoyed** learning the **bottom Navigation Bar** which is such a **small thing** but **imporves** the _User Experience_ so Much!

In total I had **spent 10 days** working on this project, **near about 1 hour each day**, and I am proud to say that **every second was worth it**! 💗
I also feel **amused** by the fact, that just by **coding and testing** this on **android**, I can pretty much be 90% sure that this is going to work **perfectly fine on IOS** too, **Flutter is Amazing**! 🤭

# About The App

* The **assets** folder contains the **fonts** used in the app, and the **images** for the **Recipes**.

* The **Main files** in **recipes/lib** are segregated as follows:

## models 
* Contains the **category.dart** and **recipe.dart** classes that define the structure for a **Category** and **Recipe** respectively.

## screens
* Contains **Widgets** that are responsible for managing the **entire screen's content** at a **given instance**.
* Example: Initally the **HomeScreen** with the **bottom TabBar** is majorly managed by the **homescreen.dart** file.
* The **categories_screen.dart** and **filters_screen.dart** screen have widget **without** a **Scaffold**, i.e., they show content through the **homescreen**.
* Remaining **recipe_screen**, **recipes_screen.dart** and **favorites_screen.dart** have a **Scaffold** and hence manage their **own** AppBars and screens. :) 

## widgets
* The **main_drawer.dart** is the **Drawer** Widget that is responsible for the **Side Menu** that appears on the Left.
* The **recipe_item.dart** defines how a **Recipe** is shown in the list of recipes on the **RecipesScreen** in a category.
* The **category_item.dart** shows how a **Category** is shown in the list on the homescreen.

--

* **data.dart** holds the data for **Categories** and **Recipes**.
* The **main.dart** is where all of this comes together in the **MyApp** Widget. :)

# Testing Status

* The app has been tested only on **android** for I don't have a Mac unfortunately! 😅
* It has been tested on **Android versions** 8+, it should work **smoothly** on **prior versions too**, **unless** there's a **significant cut out** in **memory**.

# How to Try it out

## Android
* **Install** and **Run** the **app-debug.apk** in **recipes/build/app/outputs/apk/debug/app-debug.apk**

## IOS
> With **courage** in our **hearts** and **ambition** in our **thought**, we can **do anything**!
* **Import** the project into **X-code**.
* **Run** the app on a **VM** if you wish **OR** connect your **IOS** device and run it on it! **:D**

# Ideas that may be implemented for Improvement
* **Improve the State Management**, and add in a **sqlite database**.
* Use an **Online** source to fetch **Recipes**; **increase** the number and **broaden** the variety of **Recipes**.
* Utilize **storage** to store **Favorite Recipes**.
* Allow the User to **Add their Own Recipes**.

> I would love to collaborate with fellow **Developers** willing to improve their **App Development** Skills and **Learn together**! <3 ;D

# Final Words

* A **Huge Thanks** to **Maximilian Schwarzmüller** for giving me this **opportunity** to learn **practical Computer Science** from **one of the best faculties** in the world! <3 :)
* And, as **David J Malan** would say, this was the **Recipes App!**
