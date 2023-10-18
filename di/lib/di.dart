import 'package:data/recipes_repository_impl.dart';
import 'package:domain/get_recipes_use_case.dart';
import 'package:domain/recipe_repository.dart';
import 'package:get_it/get_it.dart';

void init() {
  final getIt = GetIt.instance;

  //data di
  getIt.registerSingleton<RecipeRepository>(RecipesRepositoryImpl());

  //domain di
  getIt.registerSingleton(GetRecipesUseCase(getIt.get<RecipeRepository>()));
}
