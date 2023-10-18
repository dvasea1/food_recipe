// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeCreator _$RecipeCreatorFromJson(Map<String, dynamic> json) =>
    RecipeCreator(
      fullName: json['full_name'] as String,
      imageUrl: json['imageUrl'] as String,
      countRecipes: json['countRecipes'] as int,
      countLikes: json['countLikes'] as int,
    );

Map<String, dynamic> _$RecipeCreatorToJson(RecipeCreator instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'imageUrl': instance.imageUrl,
      'countRecipes': instance.countRecipes,
      'countLikes': instance.countLikes,
    };
