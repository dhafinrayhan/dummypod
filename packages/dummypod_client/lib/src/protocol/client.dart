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
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointProducts extends _i1.EndpointRef {
  EndpointProducts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'products';

  _i2.Future<List<_i3.Product>> getAllProducts({
    int? limit,
    int? skip,
    required String search,
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

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    products = EndpointProducts(this);
    quotes = EndpointQuotes(this);
  }

  late final EndpointProducts products;

  late final EndpointQuotes quotes;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'products': products,
        'quotes': quotes,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
