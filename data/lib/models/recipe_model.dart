
import 'package:json_annotation/json_annotation.dart';

import 'author_model.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class RecipeModel {
  final String imageUrl;
  final String title;
  final String categoryTitle;
  final String durationInString;
  final String heavyCategory;
  final AuthorModel authorModel;

  RecipeModel(
      {required this.imageUrl,
      required this.title,
      required this.categoryTitle,
      required this.durationInString,
      required this.heavyCategory,
      required this.authorModel});

  factory RecipeModel.fromJson(Map<String, dynamic> map) => _$RecipeModelFromJson(map);

  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);

}
