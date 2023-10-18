class RecipeCreatorEntity {
  final String fullName;
  final String imageUrl;
  final int countRecipes;
  final int countLikes;

  RecipeCreatorEntity({
    required this.fullName,
    required this.imageUrl,
    required this.countRecipes,
    required this.countLikes,
  });
}