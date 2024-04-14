import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class RecipesEndpoint extends Endpoint {
  /// Get recipes from the database.
  ///
  /// If [limit] is not specified, it takes the first 30 recipes by default.
  Future<List<Recipe>> getAllRecipes(
    Session session, {
    String? search,
    int? limit,
    int? skip,
  }) async {
    search ??= '';
    limit ??= 30;

    return await Recipe.db.find(
      session,
      orderBy: (t) => t.id,
      where: (t) => t.name.ilike('%$search%'),
      limit: limit == 0 ? null : limit,
      offset: skip,
    );
  }

  Future<Recipe?> getRecipe(Session session, int id) async {
    return await Recipe.db.findById(session, id);
  }
}
