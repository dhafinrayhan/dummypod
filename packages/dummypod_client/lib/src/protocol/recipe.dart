/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Recipe extends _i1.SerializableEntity {
  Recipe._({
    this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.servings,
    required this.cuisine,
    required this.caloriesPerServing,
    required this.tags,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.mealType,
  });

  factory Recipe({
    int? id,
    required String name,
    required List<String> ingredients,
    required List<String> instructions,
    required int prepTimeMinutes,
    required int cookTimeMinutes,
    required int servings,
    required String cuisine,
    required int caloriesPerServing,
    required List<String> tags,
    required String image,
    required double rating,
    required int reviewCount,
    required List<String> mealType,
  }) = _RecipeImpl;

  factory Recipe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Recipe(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      ingredients: serializationManager
          .deserialize<List<String>>(jsonSerialization['ingredients']),
      instructions: serializationManager
          .deserialize<List<String>>(jsonSerialization['instructions']),
      prepTimeMinutes: serializationManager
          .deserialize<int>(jsonSerialization['prepTimeMinutes']),
      cookTimeMinutes: serializationManager
          .deserialize<int>(jsonSerialization['cookTimeMinutes']),
      servings:
          serializationManager.deserialize<int>(jsonSerialization['servings']),
      cuisine: serializationManager
          .deserialize<String>(jsonSerialization['cuisine']),
      caloriesPerServing: serializationManager
          .deserialize<int>(jsonSerialization['caloriesPerServing']),
      tags: serializationManager
          .deserialize<List<String>>(jsonSerialization['tags']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      rating:
          serializationManager.deserialize<double>(jsonSerialization['rating']),
      reviewCount: serializationManager
          .deserialize<int>(jsonSerialization['reviewCount']),
      mealType: serializationManager
          .deserialize<List<String>>(jsonSerialization['mealType']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  List<String> ingredients;

  List<String> instructions;

  int prepTimeMinutes;

  int cookTimeMinutes;

  int servings;

  String cuisine;

  int caloriesPerServing;

  List<String> tags;

  String image;

  double rating;

  int reviewCount;

  List<String> mealType;

  Recipe copyWith({
    int? id,
    String? name,
    List<String>? ingredients,
    List<String>? instructions,
    int? prepTimeMinutes,
    int? cookTimeMinutes,
    int? servings,
    String? cuisine,
    int? caloriesPerServing,
    List<String>? tags,
    String? image,
    double? rating,
    int? reviewCount,
    List<String>? mealType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'ingredients': ingredients.toJson(),
      'instructions': instructions.toJson(),
      'prepTimeMinutes': prepTimeMinutes,
      'cookTimeMinutes': cookTimeMinutes,
      'servings': servings,
      'cuisine': cuisine,
      'caloriesPerServing': caloriesPerServing,
      'tags': tags.toJson(),
      'image': image,
      'rating': rating,
      'reviewCount': reviewCount,
      'mealType': mealType.toJson(),
    };
  }
}

class _Undefined {}

class _RecipeImpl extends Recipe {
  _RecipeImpl({
    int? id,
    required String name,
    required List<String> ingredients,
    required List<String> instructions,
    required int prepTimeMinutes,
    required int cookTimeMinutes,
    required int servings,
    required String cuisine,
    required int caloriesPerServing,
    required List<String> tags,
    required String image,
    required double rating,
    required int reviewCount,
    required List<String> mealType,
  }) : super._(
          id: id,
          name: name,
          ingredients: ingredients,
          instructions: instructions,
          prepTimeMinutes: prepTimeMinutes,
          cookTimeMinutes: cookTimeMinutes,
          servings: servings,
          cuisine: cuisine,
          caloriesPerServing: caloriesPerServing,
          tags: tags,
          image: image,
          rating: rating,
          reviewCount: reviewCount,
          mealType: mealType,
        );

  @override
  Recipe copyWith({
    Object? id = _Undefined,
    String? name,
    List<String>? ingredients,
    List<String>? instructions,
    int? prepTimeMinutes,
    int? cookTimeMinutes,
    int? servings,
    String? cuisine,
    int? caloriesPerServing,
    List<String>? tags,
    String? image,
    double? rating,
    int? reviewCount,
    List<String>? mealType,
  }) {
    return Recipe(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      ingredients: ingredients ?? this.ingredients.clone(),
      instructions: instructions ?? this.instructions.clone(),
      prepTimeMinutes: prepTimeMinutes ?? this.prepTimeMinutes,
      cookTimeMinutes: cookTimeMinutes ?? this.cookTimeMinutes,
      servings: servings ?? this.servings,
      cuisine: cuisine ?? this.cuisine,
      caloriesPerServing: caloriesPerServing ?? this.caloriesPerServing,
      tags: tags ?? this.tags.clone(),
      image: image ?? this.image,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      mealType: mealType ?? this.mealType.clone(),
    );
  }
}
