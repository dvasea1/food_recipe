import 'package:json_annotation/json_annotation.dart';

part 'recipe_creator.g.dart';

@JsonSerializable()
class RecipeCreator {
  @JsonKey(name: 'full_name')
  final String fullName;
  final String imageUrl;
  final int countRecipes;
  final int countLikes;

  RecipeCreator({
    required this.fullName,
    required this.imageUrl,
    required this.countRecipes,
    required this.countLikes,
  });

  factory RecipeCreator.fromJson(Map<String, dynamic> map) => _$RecipeCreatorFromJson(map);

  Map<String, dynamic> toJson() => _$RecipeCreatorToJson(this);
}
