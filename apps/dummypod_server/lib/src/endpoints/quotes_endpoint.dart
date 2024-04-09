import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class QuotesEndpoint extends Endpoint {
  Future<List<Quote>> getAllQuotes(
    Session session, {
    int? limit,
    int? skip,
  }) async {
    limit ??= 30;

    return await Quote.db.find(
      session,
      orderBy: (t) => t.id,
      limit: limit == 0 ? null : limit,
      offset: skip,
    );
  }

  Future<Quote?> getQuote(Session session, int id) async {
    return await Quote.db.findById(session, id);
  }

  Future<Quote?> getRandomQuote(Session session) async {
    // Select a random id from the table.
    final result = await session.dbNext.unsafeQuery(
      'SELECT id FROM quote '
      'ORDER BY RANDOM() '
      'LIMIT 1',
    );
    if (result.isEmpty) return null;
    final id = result.first.first as int;

    return await Quote.db.findById(session, id);
  }
}
