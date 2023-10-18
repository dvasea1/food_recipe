import 'package:domain/entities/recipe_entity.dart';
import 'package:food_recipe/view_models/lista_item.dart';

class PopularRecipesItem extends ListItem{
  final List<RecipeEntity> recipes;

  PopularRecipesItem({required this.recipes});
}