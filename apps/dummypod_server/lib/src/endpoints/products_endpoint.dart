import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class ProductsEndpoint extends Endpoint {
  Future<List<Product>> getAllProducts(
    Session session, {
    int? limit,
    int? skip,
  }) async {
    return await Product.db.find(
      session,
      orderBy: (t) => t.id,
      limit: limit,
      offset: skip,
    );
  }

  Future<Product?> getProduct(Session session, int id) async {
    return await Product.db.findById(session, id);
  }
}
