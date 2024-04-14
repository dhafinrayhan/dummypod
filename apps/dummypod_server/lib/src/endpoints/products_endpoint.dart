import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class ProductsEndpoint extends Endpoint {
  /// Get products from the database.
  ///
  /// If [limit] is not specified, it takes the first 30 products by default.
  Future<List<Product>> getAllProducts(
    Session session, {
    String? search,
    int? limit,
    int? skip,
  }) async {
    search ??= '';
    limit ??= 30;

    return await Product.db.find(
      session,
      orderBy: (t) => t.id,
      where: (t) =>
          t.title.ilike('%$search%') | t.description.ilike('%$search%'),
      limit: limit == 0 ? null : limit,
      offset: skip,
    );
  }

  Future<Product?> getProduct(Session session, int id) async {
    return await Product.db.findById(session, id);
  }

  Future<Product> addProduct(Session session, Product product) async {
    return await Product.db.insertRow(session, product);
  }

  Future<Product> updateProduct(Session session, Product product) async {
    return await Product.db.updateRow(session, product);
  }

  Future<int> deleteProduct(Session session, Product product) async {
    return await Product.db.deleteRow(session, product);
  }
}
