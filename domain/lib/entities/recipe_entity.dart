import 'package:domain/entities/author_entity.dart';

class RecipeEntity {
  final String imageUrl;
  final String title;
  final String categoryTitle;
  final String durationInString;
  final String heavyCategory;
  final AuthorEntity authorModel;

  RecipeEntity(
      {required this.imageUrl,
        required this.title,
        required this.categoryTitle,
        required this.durationInString,
        required this.heavyCategory,
        required this.authorModel});



}