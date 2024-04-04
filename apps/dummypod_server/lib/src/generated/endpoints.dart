/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/quotes_endpoint.dart' as _i2;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'quotes': _i2.QuotesEndpoint()
        ..initialize(
          server,
          'quotes',
          null,
        )
    };
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
              (endpoints['quotes'] as _i2.QuotesEndpoint).getAllQuotes(
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
              (endpoints['quotes'] as _i2.QuotesEndpoint).getQuote(
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
              (endpoints['quotes'] as _i2.QuotesEndpoint)
                  .getRandomQuote(session),
        ),
      },
    );
  }
}
