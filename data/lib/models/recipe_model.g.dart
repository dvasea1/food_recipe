// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => RecipeModel(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      categoryTitle: json['categoryTitle'] as String,
      durationInString: json['durationInString'] as String,
      heavyCategory: json['heavyCategory'] as String,
      authorModel:
          AuthorModel.fromJson(json['authorModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeModelToJson(RecipeModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'categoryTitle': instance.categoryTitle,
      'durationInString': instance.durationInString,
      'heavyCategory': instance.heavyCategory,
      'authorModel': instance.authorModel,
    };
