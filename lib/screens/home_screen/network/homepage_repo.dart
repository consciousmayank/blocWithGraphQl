import 'package:fluttergrocery/applevel/dependencies.dart';
import 'package:fluttergrocery/screens/home_screen/network/homepage_api_provider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePageRepo {
  var provider = getIt.get<HomePageApiProvider>();

  Future<QueryResult> getAllUsers() async {
    return provider.getAllUsers();
  }
}
