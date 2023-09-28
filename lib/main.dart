import 'package:flutter/material.dart';
import 'package:food_recipe/models/author_model.dart';
import 'package:food_recipe/resources/app_colors.dart';
import 'package:food_recipe/top_user_widget.dart';
import 'package:food_recipe/widgets/popular_recipes_carousel_widget.dart';
import 'package:food_recipe/widgets/section_widget.dart';

import 'models/recipe_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RecipeModel> recipes = [
    RecipeModel(
      imageUrl: 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/12/Shakshuka-19.jpg',
      title: 'Spaghetti Bolognese',
      categoryTitle: 'Pasta',
      durationInString: '30-45 minutes',
      heavyCategory: 'Medium',
      authorModel: AuthorModel(
          fullName: 'Sam Worthington ',
          imageUrl:
              'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQD89HJuXUBux26oYaPBve-f7HvxfqjQZUZXYI3-NAc21ovestEyo-bCs0VKYGlXJde1ht77pZwYrrrRfQ'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      body: Container(
        color: AppColors.springWoodColor,
        child: ListView(
          children: [
            TopUserWidget(),
            SectionWidget(title: 'Popular Recipes', buttonTitle: 'See all', onButtonTap: () {}),
            PopularRecipesCarouselWidget(
              recipes: recipes,
            ),
          ],
        ),
      ),
    );
  }
}
