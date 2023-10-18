import 'package:domain/entities/recipe_entity.dart';
import 'package:domain/recipe_repository.dart';

class GetRecipesUseCase {
  final RecipeRepository repository;

  GetRecipesUseCase(this.repository);

  Future<List<RecipeEntity>> call() {
    return repository.getRecipes();
  }
}
