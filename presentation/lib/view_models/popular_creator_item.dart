import 'package:domain/entities/recipe_creator_entity.dart';
import 'package:food_recipe/view_models/lista_item.dart';

class PopularCreatorItem extends ListItem{
  final List<RecipeCreatorEntity> recipeCreators;

  PopularCreatorItem({required this.recipeCreators});

}