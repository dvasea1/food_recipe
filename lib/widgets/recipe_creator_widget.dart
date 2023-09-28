import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/models/recipe_creator.dart';
import 'package:food_recipe/resources/app_colors.dart';
import 'package:food_recipe/resources/app_icons.dart';
import 'package:food_recipe/resources/app_text_styles.dart';

class RecipeCreatorWidget extends StatelessWidget {
  final RecipeCreator recipeCreator;

  const RecipeCreatorWidget({super.key, required this.recipeCreator});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Container(
              width: 32,
              height: 32,
              child: Image(
                image: NetworkImage(recipeCreator.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            recipeCreator.fullName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: AppColors.aztecColor),
          ),
          Expanded(
            child: Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      AppIcons.bookIcon,
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(child: Text(
                        recipeCreator.countRecipes.toString(),
                        style: AppTextStyles.textStyleFont14,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      AppIcons.heartIcon,
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(child:  Text(
                        recipeCreator.countLikes.toString(),
                        style: AppTextStyles.textStyleFont14,
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
