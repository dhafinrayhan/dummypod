/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/products_endpoint.dart' as _i2;
import '../endpoints/quotes_endpoint.dart' as _i3;
import 'package:dummypod_server/src/generated/product.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'products': _i2.ProductsEndpoint()
        ..initialize(
          server,
          'products',
          null,
        ),
      'quotes': _i3.QuotesEndpoint()
        ..initialize(
          server,
          'quotes',
          null,
        ),
    };
    connectors['products'] = _i1.EndpointConnector(
      name: 'products',
      endpoint: endpoints['products']!,
      methodConnectors: {
        'getAllProducts': _i1.MethodConnector(
          name: 'getAllProducts',
          params: {
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'skip': _i1.ParameterDescription(
              name: 'skip',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'search': _i1.ParameterDescription(
              name: 'search',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i2.ProductsEndpoint).getAllProducts(
            session,
            limit: params['limit'],
            skip: params['skip'],
            search: params['search'],
          ),
        ),
        'getProduct': _i1.MethodConnector(
          name: 'getProduct',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i2.ProductsEndpoint).getProduct(
            session,
            params['id'],
          ),
        ),
        'addProduct': _i1.MethodConnector(
          name: 'addProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i4.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i2.ProductsEndpoint).addProduct(
            session,
            params['product'],
          ),
        ),
        'updateProduct': _i1.MethodConnector(
          name: 'updateProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i4.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i2.ProductsEndpoint).updateProduct(
            session,
            params['product'],
          ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i4.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i2.ProductsEndpoint).deleteProduct(
            session,
            params['product'],
          ),
        ),
      },
    );
    connectors['quotes'] = _i1.EndpointConnector(
      name: 'quotes',
      endpoint: endpoints['quotes']!,
      methodConnectors: {
        'getAllQuotes': _i1.MethodConnector(
          name: 'getAllQuotes',
          params: {
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'skip': _i1.ParameterDescription(
              name: 'skip',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['quotes'] as _i3.QuotesEndpoint).getAllQuotes(
            session,
            limit: params['limit'],
            skip: params['skip'],
          ),
        ),
        'getQuote': _i1.MethodConnector(
          name: 'getQuote',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['quotes'] as _i3.QuotesEndpoint).getQuote(
            session,
            params['id'],
          ),
        ),
        'getRandomQuote': _i1.MethodConnector(
          name: 'getRandomQuote',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['quotes'] as _i3.QuotesEndpoint)
                  .getRandomQuote(session),
        ),
      },
    );
  }
}
