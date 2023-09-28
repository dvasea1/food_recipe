import 'package:food_recipe/models/recipe_model.dart';
import 'package:food_recipe/view_models/lista_item.dart';

class PopularRecipesItem extends ListItem{
  final List<RecipeModel> recipes;

  PopularRecipesItem({required this.recipes});
}