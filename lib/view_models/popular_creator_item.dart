import 'package:food_recipe/models/recipe_creator.dart';
import 'package:food_recipe/view_models/lista_item.dart';

class PopularCreatorItem extends ListItem{
  final List<RecipeCreator> recipeCreators;

  PopularCreatorItem({required this.recipeCreators});

}