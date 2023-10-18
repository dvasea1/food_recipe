import 'dart:convert';

import 'package:data/mapper.dart';
import 'package:data/models/recipe_model.dart';
import 'package:domain/entities/recipe_entity.dart';
import 'package:domain/recipe_repository.dart';

class RecipesRepositoryImpl extends RecipeRepository {
  @override
  Future<List<RecipeEntity>> getRecipes() async {
    //api data source
    //local datasource
    //read from json file
    ////
    String json = ''' {
 "imageUrl": "https://test",
"title": "Pasta",
  "categoryTitle": "food","durationInString":"2 minutes",
 "heavyCategory": "low",
"authorModel": {
"fullName": "Vasile Barbaros",
"imageUrl": "https://test"
}
} ''';

    var recipe = RecipeModel.fromJson(jsonDecode(json));
    print('recipeModel $recipe');

    return [Mapper().recipeModelToEntity(recipe)];
  }
}
