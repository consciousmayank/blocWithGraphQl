import 'package:fluttergrocery/applevel/client.dart';
import 'package:fluttergrocery/applevel/dependencies.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:fluttergrocery/graphql_operations/queries/my_query.dart'
as query;

class HomePageApiProvider{
  final client = getIt.get<Config>();

  Future<QueryResult> getAllUsers() async {
    final WatchQueryOptions _options = WatchQueryOptions(
      documentNode: gql(query.getAllUsers),
      fetchResults: true,
    );

    return await client.clientToQuery().query(_options);
  }
}