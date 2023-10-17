import 'package:flutter/material.dart';
import 'package:food_recipe/controllers/home_controller.dart';
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
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

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
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {


    HomeController homeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: AppColors.springWoodColor,
        child: Column(
          children: [
            InkWell(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              onTap: () {
                homeController.changeStreamController();
              },
            ),
            Obx(() => Text(homeController.text.value)),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Obx(
                  () => homeController.listItems.isEmpty
                      ? Column(
                          children: [CircularProgressIndicator()],
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            var item = homeController.listItems[index];
                            if (item is SectionItem) {
                              return SectionWidget(
                                  title: item.title, buttonTitle: item.buttonTitle, onButtonTap: () {});
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
                          itemCount: homeController.listItems.length,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
