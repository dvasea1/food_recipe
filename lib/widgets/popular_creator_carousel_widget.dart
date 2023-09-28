import 'package:flutter/cupertino.dart';
import 'package:food_recipe/models/recipe_creator.dart';
import 'package:food_recipe/widgets/recipe_creator_widget.dart';

class PopularCreatorCarouselWidget extends StatelessWidget {
  final List<RecipeCreator> recipeCreators;

  const PopularCreatorCarouselWidget({super.key, required this.recipeCreators});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      child: ListView.builder(
        itemBuilder: (context, index) {
          var recipeCreator = recipeCreators[index];
          return RecipeCreatorWidget(
            recipeCreator: recipeCreator,
          );
        },
        itemCount: recipeCreators.length,
        padding: EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
