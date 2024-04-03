import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class QuotesEndpoint extends Endpoint {
  Future<List<Quote>> getAllQuotes(Session session) async {
    return await Quote.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<Quote?> getQuote(Session session, int id) async {
    return await Quote.db.findById(session, id);
  }
}
