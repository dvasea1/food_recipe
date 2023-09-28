import 'package:flutter/material.dart';
import 'package:food_recipe/models/author_model.dart';
import 'package:food_recipe/resources/app_colors.dart';
import 'package:food_recipe/top_user_widget.dart';
import 'package:food_recipe/view_models/header_item.dart';
import 'package:food_recipe/view_models/popular_creator_item.dart';
import 'package:food_recipe/view_models/popular_recipes_item.dart';
import 'package:food_recipe/view_models/section_item.dart';
import 'package:food_recipe/widgets/popular_creator_carousel_widget.dart';
import 'package:food_recipe/widgets/popular_recipes_carousel_widget.dart';
import 'package:food_recipe/widgets/section_widget.dart';

import 'models/recipe_creator.dart';
import 'models/recipe_model.dart';
import 'view_models/lista_item.dart';

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
  List<ListItem> listItems = [
    HeaderItem(),
    SectionItem(title: 'Popular Recipes', buttonTitle: 'See all'),
    PopularRecipesItem(recipes: [
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
    ]),
    SectionItem(title: 'Popular Creator', buttonTitle: 'See all'),
    PopularCreatorItem(recipeCreators: [
      RecipeCreator(
        fullName: 'James Nikidaw',
        imageUrl: 'https://cdn.britannica.com/64/135864-050-57268027/Nicolas-Cage-2009.jpg',
        countRecipes: 100,
        countLikes: 10,
      )
    ]),
    SectionItem(title: 'Popular Creator', buttonTitle: 'See all'),
    PopularCreatorItem(recipeCreators: [
      RecipeCreator(
        fullName: 'James Nikidaw',
        imageUrl: 'https://cdn.britannica.com/64/135864-050-57268027/Nicolas-Cage-2009.jpg',
        countRecipes: 100,
        countLikes: 10,
      )
    ]),
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
        child: ListView.builder(
          itemBuilder: (context, index) {
            var item = listItems[index];
            if (item is SectionItem) {
              return SectionWidget(title: item.title, buttonTitle: item.buttonTitle, onButtonTap: () {});
            }
            if (item is HeaderItem) {
              return TopUserWidget();
            }
            if (item is PopularCreatorItem) {
              return PopularCreatorCarouselWidget(
                recipeCreators: item.recipeCreators,
              );
            }
            if (item is PopularRecipesItem) {
              return PopularRecipesCarouselWidget(
                recipes: item.recipes,
              );
            }
            return Container();
          },
          itemCount: listItems.length,
          /* children: [
            TopUserWidget(),
            SectionWidget(title: 'Popular Recipes', buttonTitle: 'See all', onButtonTap: () {}),
            PopularRecipesCarouselWidget(
              recipes: recipes,
            ),
            SectionWidget(title: 'Popular Creator', buttonTitle: 'See all', onButtonTap: () {}),
            PopularCreatorCarouselWidget(
              recipeCreators: recipeCreators,
            )
          ],*/
        ),
      ),
    );
  }
}
