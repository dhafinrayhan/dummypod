/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:dummypod_client/src/protocol/product.dart' as _i3;
import 'package:dummypod_client/src/protocol/quote.dart' as _i4;
import 'package:dummypod_client/src/protocol/user.dart' as _i5;
import 'package:serverpod_auth_client/module.dart' as _i6;
import 'protocol.dart' as _i7;

/// {@category Endpoint}
class EndpointData extends _i1.EndpointRef {
  EndpointData(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'data';

  _i2.Future<void> populateDatabase() => caller.callServerEndpoint<void>(
        'data',
        'populateDatabase',
        {},
      );

  _i2.Future<void> clearDatabase() => caller.callServerEndpoint<void>(
        'data',
        'clearDatabase',
        {},
      );
}

/// {@category Endpoint}
class EndpointProducts extends _i1.EndpointRef {
  EndpointProducts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'products';

  _i2.Future<List<_i3.Product>> getAllProducts({
    int? limit,
    int? skip,
    String? search,
  }) =>
      caller.callServerEndpoint<List<_i3.Product>>(
        'products',
        'getAllProducts',
        {
          'limit': limit,
          'skip': skip,
          'search': search,
        },
      );

  _i2.Future<_i3.Product?> getProduct(int id) =>
      caller.callServerEndpoint<_i3.Product?>(
        'products',
        'getProduct',
        {'id': id},
      );

  _i2.Future<_i3.Product> addProduct(_i3.Product product) =>
      caller.callServerEndpoint<_i3.Product>(
        'products',
        'addProduct',
        {'product': product},
      );

  _i2.Future<_i3.Product> updateProduct(_i3.Product product) =>
      caller.callServerEndpoint<_i3.Product>(
        'products',
        'updateProduct',
        {'product': product},
      );

  _i2.Future<int> deleteProduct(_i3.Product product) =>
      caller.callServerEndpoint<int>(
        'products',
        'deleteProduct',
        {'product': product},
      );
}

/// {@category Endpoint}
class EndpointQuotes extends _i1.EndpointRef {
  EndpointQuotes(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'quotes';

  _i2.Future<List<_i4.Quote>> getAllQuotes({
    int? limit,
    int? skip,
  }) =>
      caller.callServerEndpoint<List<_i4.Quote>>(
        'quotes',
        'getAllQuotes',
        {
          'limit': limit,
          'skip': skip,
        },
      );

  _i2.Future<_i4.Quote?> getQuote(int id) =>
      caller.callServerEndpoint<_i4.Quote?>(
        'quotes',
        'getQuote',
        {'id': id},
      );

  _i2.Future<_i4.Quote> getRandomQuote() =>
      caller.callServerEndpoint<_i4.Quote>(
        'quotes',
        'getRandomQuote',
        {},
      );
}

/// {@category Endpoint}
class EndpointUsers extends _i1.EndpointRef {
  EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<List<_i5.User>> getAllUsers({
    int? limit,
    int? skip,
    String? search,
  }) =>
      caller.callServerEndpoint<List<_i5.User>>(
        'users',
        'getAllUsers',
        {
          'limit': limit,
          'skip': skip,
          'search': search,
        },
      );

  _i2.Future<_i5.User?> getCurrentUser() =>
      caller.callServerEndpoint<_i5.User?>(
        'users',
        'getCurrentUser',
        {},
      );

  _i2.Future<_i5.User?> getUser(int userId) =>
      caller.callServerEndpoint<_i5.User?>(
        'users',
        'getUser',
        {'userId': userId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
  }

  late final _i6.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    data = EndpointData(this);
    products = EndpointProducts(this);
    quotes = EndpointQuotes(this);
    users = EndpointUsers(this);
    modules = _Modules(this);
  }

  late final EndpointData data;

  late final EndpointProducts products;

  late final EndpointQuotes quotes;

  late final EndpointUsers users;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'data': data,
        'products': products,
        'quotes': quotes,
        'users': users,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
