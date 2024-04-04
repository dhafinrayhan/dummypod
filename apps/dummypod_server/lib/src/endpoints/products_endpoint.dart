import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class ProductsEndpoint extends Endpoint {
  Future<List<Product>> getAllProducts(
    Session session, {
    int? limit,
    int? skip,
    String? search,
  }) async {
    search ??= '';

    return await Product.db.find(
      session,
      orderBy: (t) => t.id,
      limit: limit,
      offset: skip,
      where: (t) =>
          t.title.ilike('%$search%') | t.description.ilike('%$search%'),
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
