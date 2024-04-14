import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class RecipesEndpoint extends Endpoint {
  /// Get recipes from the database.
  ///
  /// If [limit] is not specified, it takes the first 30 recipes by default.
  Future<List<Recipe>> getAllRecipes(
    Session session, {
    int? limit,
    int? skip,
    String? search,
  }) async {
    limit ??= 30;
    search ??= '';

    return await Recipe.db.find(
      session,
      orderBy: (t) => t.id,
      limit: limit == 0 ? null : limit,
      offset: skip,
      where: (t) => t.name.ilike('%$search%'),
    );
  }

  Future<Recipe?> getRecipe(Session session, int id) async {
    return await Recipe.db.findById(session, id);
  }
}
