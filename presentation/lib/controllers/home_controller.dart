import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:domain/entities/author_entity.dart';
import 'package:domain/entities/recipe_creator_entity.dart';
import 'package:domain/entities/recipe_entity.dart';
import 'package:domain/get_recipes_use_case.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../view_models/header_item.dart';
import '../view_models/lista_item.dart';
import '../view_models/popular_creator_item.dart';
import '../view_models/popular_recipes_item.dart';
import '../view_models/section_item.dart';

class HomeController extends GetxController {
  RxString text = RxString('');

  RxList<ListItem> listItems = RxList([]);

  @override
  void onInit() {
    createStreamController();
  }

  Future delayedFunctio() async {
    await Future.delayed(Duration(seconds: 3));
  }

  Future<int> getInt() async {
    delayedFunctio().then((value) {
      print('print after');
    });
    return 1;
  }

  Stream? stream;
  StreamController<String> streamController = StreamController();

  void createStreamController() {
    print('createStreamController ');
    stream = streamController.stream;
    stream?.listen((event) {
      print('VALUE of int: $event');
    });
  }

  void testJsonEncode() {
    var author = AuthorEntity(fullName: 'Vasile', imageUrl: 'https://test');
    String jsonAuthor = jsonEncode(author);
    print('JsonAuthor: $jsonAuthor');
/*
    var authorFromJson = AuthorModel.fromJson(jsonDecode(jsonAuthor));

    print('authorFromJson $authorFromJson');

    var recipeCreator = RecipeCreator(fullName: 'Vasile', imageUrl: 'https://test', countRecipes: 12, countLikes: 200);

    String jsonRecipeCreator = jsonEncode(recipeCreator);
    print('jsonRecipeCreator: $jsonRecipeCreator');

    var recipeCreatorObj = RecipeCreator.fromJson(jsonDecode(jsonRecipeCreator));

    print('recipeCreatorObj: $recipeCreatorObj');*/
  }

  void changeStreamController() {
    streamController.sink.add('RandomText ${Random().nextInt(1000)}');
  }



  void getRecipes() async {
    GetRecipesUseCase useCase = GetIt.instance.get<GetRecipesUseCase>();
    var recipes = await useCase.call();
    print('recipes $recipes');
  }

  Future<void> addItems() async {
    text.value = 'New text';

    print('addItems');

    getInt().then((myInt) {
      print('my int is $myInt');
    });

    //await Future.delayed(Duration(seconds: 5));

    print('added items');
    print('listItems size before: ${listItems.length}');
    listItems.addAll([
      HeaderItem(),
      SectionItem(title: 'Popular Recipes', buttonTitle: 'See all'),
      PopularRecipesItem(recipes: [
        RecipeEntity(
          imageUrl: 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/12/Shakshuka-19.jpg',
          title: 'Spaghetti Bolognese',
          categoryTitle: 'Pasta',
          durationInString: '30-45 minutes',
          heavyCategory: 'Medium',
          authorModel: AuthorEntity(
              fullName: 'Sam Worthington ',
              imageUrl:
                  'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQD89HJuXUBux26oYaPBve-f7HvxfqjQZUZXYI3-NAc21ovestEyo-bCs0VKYGlXJde1ht77pZwYrrrRfQ'),
        )
      ]),
      SectionItem(title: 'Popular Creator', buttonTitle: 'See all'),
      PopularCreatorItem(recipeCreators: [
        RecipeCreatorEntity(
          fullName: 'James Nikidaw',
          imageUrl: 'https://cdn.britannica.com/64/135864-050-57268027/Nicolas-Cage-2009.jpg',
          countRecipes: 100,
          countLikes: 10,
        )
      ]),
    ]);
    print('listItems size current: ${listItems.length}');
  }
}
