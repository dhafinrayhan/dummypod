import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:http/http.dart' as http;

import '../generated/protocol.dart';

class DataEndpoint extends Endpoint {
  Future<void> populateDatabase(Session session) async {
    const directoryUrl =
        'https://raw.githubusercontent.com/Ovi/DummyJSON/master/src/data/';

    Future<List<T>> getListFromJson<T>(String filename) async {
      final res = await http.read(Uri.parse('$directoryUrl$filename'));
      return (jsonDecode(res) as List)
          .map((data) =>
              Serverpod.instance.serializationManager.deserialize<T>(data))
          .toList();
    }

    final (
      products,
      recipes,
      quotes,
    ) = await (
      getListFromJson<Product>('products.json'),
      getListFromJson<Recipe>('recipes.json'),
      getListFromJson<Quote>('quotes.json'),
    ).wait;

    await session.dbNext.transaction((transaction) async {
      await Product.db.insert(session, products, transaction: transaction);
      await Recipe.db.insert(session, recipes, transaction: transaction);
      await Quote.db.insert(session, quotes, transaction: transaction);
    });
  }

  Future<void> clearDatabase(Session session) async {
    await session.dbNext.transaction((transaction) async {
      await Product.db.deleteWhere(
        session,
        where: (t) => t.id > 0,
        transaction: transaction,
      );
      await Recipe.db.deleteWhere(
        session,
        where: (t) => t.id > 0,
        transaction: transaction,
      );
      await Quote.db.deleteWhere(
        session,
        where: (t) => t.id > 0,
        transaction: transaction,
      );
    });
  }
}
