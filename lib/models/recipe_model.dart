import 'package:food_recipe/models/author_model.dart';

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



}
