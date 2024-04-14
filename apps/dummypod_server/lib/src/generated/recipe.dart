/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Recipe extends _i1.TableRow {
  Recipe._({
    int? id,
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
  }) : super(id);

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

  static final t = RecipeTable();

  static const db = RecipeRepository._();

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

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'ingredients': ingredients,
      'instructions': instructions,
      'prepTimeMinutes': prepTimeMinutes,
      'cookTimeMinutes': cookTimeMinutes,
      'servings': servings,
      'cuisine': cuisine,
      'caloriesPerServing': caloriesPerServing,
      'tags': tags,
      'image': image,
      'rating': rating,
      'reviewCount': reviewCount,
      'mealType': mealType,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'ingredients':
        ingredients = value;
        return;
      case 'instructions':
        instructions = value;
        return;
      case 'prepTimeMinutes':
        prepTimeMinutes = value;
        return;
      case 'cookTimeMinutes':
        cookTimeMinutes = value;
        return;
      case 'servings':
        servings = value;
        return;
      case 'cuisine':
        cuisine = value;
        return;
      case 'caloriesPerServing':
        caloriesPerServing = value;
        return;
      case 'tags':
        tags = value;
        return;
      case 'image':
        image = value;
        return;
      case 'rating':
        rating = value;
        return;
      case 'reviewCount':
        reviewCount = value;
        return;
      case 'mealType':
        mealType = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Recipe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Recipe>(
      where: where != null ? where(Recipe.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Recipe?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Recipe>(
      where: where != null ? where(Recipe.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Recipe?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Recipe>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecipeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Recipe>(
      where: where(Recipe.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Recipe>(
      where: where != null ? where(Recipe.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecipeInclude include() {
    return RecipeInclude._();
  }

  static RecipeIncludeList includeList({
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    RecipeInclude? include,
  }) {
    return RecipeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Recipe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Recipe.t),
      include: include,
    );
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

class RecipeTable extends _i1.Table {
  RecipeTable({super.tableRelation}) : super(tableName: 'recipe') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    ingredients = _i1.ColumnSerializable(
      'ingredients',
      this,
    );
    instructions = _i1.ColumnSerializable(
      'instructions',
      this,
    );
    prepTimeMinutes = _i1.ColumnInt(
      'prepTimeMinutes',
      this,
    );
    cookTimeMinutes = _i1.ColumnInt(
      'cookTimeMinutes',
      this,
    );
    servings = _i1.ColumnInt(
      'servings',
      this,
    );
    cuisine = _i1.ColumnString(
      'cuisine',
      this,
    );
    caloriesPerServing = _i1.ColumnInt(
      'caloriesPerServing',
      this,
    );
    tags = _i1.ColumnSerializable(
      'tags',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    rating = _i1.ColumnDouble(
      'rating',
      this,
    );
    reviewCount = _i1.ColumnInt(
      'reviewCount',
      this,
    );
    mealType = _i1.ColumnSerializable(
      'mealType',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnSerializable ingredients;

  late final _i1.ColumnSerializable instructions;

  late final _i1.ColumnInt prepTimeMinutes;

  late final _i1.ColumnInt cookTimeMinutes;

  late final _i1.ColumnInt servings;

  late final _i1.ColumnString cuisine;

  late final _i1.ColumnInt caloriesPerServing;

  late final _i1.ColumnSerializable tags;

  late final _i1.ColumnString image;

  late final _i1.ColumnDouble rating;

  late final _i1.ColumnInt reviewCount;

  late final _i1.ColumnSerializable mealType;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        ingredients,
        instructions,
        prepTimeMinutes,
        cookTimeMinutes,
        servings,
        cuisine,
        caloriesPerServing,
        tags,
        image,
        rating,
        reviewCount,
        mealType,
      ];
}

@Deprecated('Use RecipeTable.t instead.')
RecipeTable tRecipe = RecipeTable();

class RecipeInclude extends _i1.IncludeObject {
  RecipeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Recipe.t;
}

class RecipeIncludeList extends _i1.IncludeList {
  RecipeIncludeList._({
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Recipe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Recipe.t;
}

class RecipeRepository {
  const RecipeRepository._();

  Future<List<Recipe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Recipe>(
      where: where?.call(Recipe.t),
      orderBy: orderBy?.call(Recipe.t),
      orderByList: orderByList?.call(Recipe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Recipe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Recipe>(
      where: where?.call(Recipe.t),
      orderBy: orderBy?.call(Recipe.t),
      orderByList: orderByList?.call(Recipe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Recipe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Recipe>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Recipe>> insert(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Recipe>(
      rows,
      transaction: transaction,
    );
  }

  Future<Recipe> insertRow(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Recipe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Recipe>> update(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.ColumnSelections<RecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Recipe>(
      rows,
      columns: columns?.call(Recipe.t),
      transaction: transaction,
    );
  }

  Future<Recipe> updateRow(
    _i1.Session session,
    Recipe row, {
    _i1.ColumnSelections<RecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Recipe>(
      row,
      columns: columns?.call(Recipe.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Recipe>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Recipe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecipeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Recipe>(
      where: where(Recipe.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Recipe>(
      where: where?.call(Recipe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
