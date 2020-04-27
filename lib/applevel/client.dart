import 'package:flutter/material.dart';
import 'package:fluttergrocery/applevel/dependencies.dart';
import 'package:fluttergrocery/applevel/shared_prefs.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  static HttpLink httpLink = HttpLink(
      uri: "https://collegeadmin.herokuapp.com/v1/graphql",
      headers: {
        'x-hasura-admin-secret': 'M0rpheus@@22'
      }
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
      link: httpLink,
    );
  }
}
