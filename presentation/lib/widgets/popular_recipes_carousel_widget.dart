import 'package:domain/entities/recipe_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_recipe/widgets/recipe_widget.dart';

class PopularRecipesCarouselWidget extends StatelessWidget {
  final List<RecipeEntity> recipes;

  const PopularRecipesCarouselWidget({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 277,
      child: ListView.builder(
        itemBuilder: (context, index) {
          var recipe = recipes[index];
          return RecipeWidget(model: recipe);
        },
        itemCount: recipes.length,
        padding: EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
