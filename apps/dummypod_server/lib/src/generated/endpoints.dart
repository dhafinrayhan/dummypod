/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/data_endpoint.dart' as _i2;
import '../endpoints/products_endpoint.dart' as _i3;
import '../endpoints/quotes_endpoint.dart' as _i4;
import '../endpoints/recipes_endpoint.dart' as _i5;
import '../endpoints/users_endpoint.dart' as _i6;
import 'package:dummypod_server/src/generated/product.dart' as _i7;
import 'package:dummypod_server/src/generated/user.dart' as _i8;
import 'package:serverpod_auth_server/module.dart' as _i9;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'data': _i2.DataEndpoint()
        ..initialize(
          server,
          'data',
          null,
        ),
      'products': _i3.ProductsEndpoint()
        ..initialize(
          server,
          'products',
          null,
        ),
      'quotes': _i4.QuotesEndpoint()
        ..initialize(
          server,
          'quotes',
          null,
        ),
      'recipes': _i5.RecipesEndpoint()
        ..initialize(
          server,
          'recipes',
          null,
        ),
      'users': _i6.UsersEndpoint()
        ..initialize(
          server,
          'users',
          null,
        ),
    };
    connectors['data'] = _i1.EndpointConnector(
      name: 'data',
      endpoint: endpoints['data']!,
      methodConnectors: {
        'populateDatabase': _i1.MethodConnector(
          name: 'populateDatabase',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['data'] as _i2.DataEndpoint).populateDatabase(session),
        ),
        'clearDatabase': _i1.MethodConnector(
          name: 'clearDatabase',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['data'] as _i2.DataEndpoint).clearDatabase(session),
        ),
      },
    );
    connectors['products'] = _i1.EndpointConnector(
      name: 'products',
      endpoint: endpoints['products']!,
      methodConnectors: {
        'getAllProducts': _i1.MethodConnector(
          name: 'getAllProducts',
          params: {
            'search': _i1.ParameterDescription(
              name: 'search',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
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
              (endpoints['products'] as _i3.ProductsEndpoint).getAllProducts(
            session,
            search: params['search'],
            limit: params['limit'],
            skip: params['skip'],
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
              (endpoints['products'] as _i3.ProductsEndpoint).getProduct(
            session,
            params['id'],
          ),
        ),
        'addProduct': _i1.MethodConnector(
          name: 'addProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i7.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i3.ProductsEndpoint).addProduct(
            session,
            params['product'],
          ),
        ),
        'updateProduct': _i1.MethodConnector(
          name: 'updateProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i7.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i3.ProductsEndpoint).updateProduct(
            session,
            params['product'],
          ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i7.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i3.ProductsEndpoint).deleteProduct(
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
              (endpoints['quotes'] as _i4.QuotesEndpoint).getAllQuotes(
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
              (endpoints['quotes'] as _i4.QuotesEndpoint).getQuote(
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
              (endpoints['quotes'] as _i4.QuotesEndpoint)
                  .getRandomQuote(session),
        ),
      },
    );
    connectors['recipes'] = _i1.EndpointConnector(
      name: 'recipes',
      endpoint: endpoints['recipes']!,
      methodConnectors: {
        'getAllRecipes': _i1.MethodConnector(
          name: 'getAllRecipes',
          params: {
            'search': _i1.ParameterDescription(
              name: 'search',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
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
              (endpoints['recipes'] as _i5.RecipesEndpoint).getAllRecipes(
            session,
            search: params['search'],
            limit: params['limit'],
            skip: params['skip'],
          ),
        ),
        'getRecipe': _i1.MethodConnector(
          name: 'getRecipe',
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
              (endpoints['recipes'] as _i5.RecipesEndpoint).getRecipe(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['users'] = _i1.EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {
            'search': _i1.ParameterDescription(
              name: 'search',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
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
              (endpoints['users'] as _i6.UsersEndpoint).getAllUsers(
            session,
            search: params['search'],
            limit: params['limit'],
            skip: params['skip'],
          ),
        ),
        'getCurrentUser': _i1.MethodConnector(
          name: 'getCurrentUser',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).getCurrentUser(session),
        ),
        'getUser': _i1.MethodConnector(
          name: 'getUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).getUser(
            session,
            params['userId'],
          ),
        ),
        'updateCurrentUser': _i1.MethodConnector(
          name: 'updateCurrentUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
            'fullName': _i1.ParameterDescription(
              name: 'fullName',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).updateCurrentUser(
            session,
            params['user'],
            fullName: params['fullName'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i9.Endpoints()..initializeEndpoints(server);
  }
}
