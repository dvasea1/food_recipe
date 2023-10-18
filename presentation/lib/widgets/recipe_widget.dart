import 'package:domain/entities/recipe_entity.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/resources/app_colors.dart';
import 'package:food_recipe/resources/app_icons.dart';
import 'package:food_recipe/resources/app_text_styles.dart';

class RecipeWidget extends StatelessWidget {
  final RecipeEntity model;

  const RecipeWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                child: Image(
                  image: NetworkImage(
                    model.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: TextStyle(fontSize: 16, color: AppColors.aztecColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        model.categoryTitle,
                        style: AppTextStyles.textStyleFont14,
                      ),
                      Row(
                        children: [
                          AppIcons.medalIcon,
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            model.durationInString,
                            style: AppTextStyles.textStyleFont14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AppIcons.clockIcon,
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              model.heavyCategory,
                              style: AppTextStyles.textStyleFont14,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 20,
                              height: 20,
                              child: Image(
                                image: NetworkImage(model.authorModel.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              model.authorModel.imageUrl,
                              style: AppTextStyles.textStyleFont14,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
