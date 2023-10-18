import 'package:data/models/recipe_model.dart';
import 'package:domain/entities/author_entity.dart';
import 'package:domain/entities/recipe_entity.dart';

class Mapper {
  RecipeEntity recipeModelToEntity(RecipeModel input) {
    return RecipeEntity(
        imageUrl: input.imageUrl,
        title: input.title,
        categoryTitle: input.categoryTitle,
        durationInString: input.durationInString,
        heavyCategory: input.heavyCategory,
        authorModel: AuthorEntity(fullName: input.authorModel.fullName, imageUrl: input.authorModel.imageUrl));
  }
}
