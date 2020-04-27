import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttergrocery/model/users.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

//States go to UI
abstract class HomepageState extends Equatable {
  HomepageState([List props = const []]) : super(props);
}

class InitialHomepageState extends HomepageState {
  @override
  List<Object> get props => [];
}

class HomePageLoadingState extends HomepageState{
  @override
  List<Object> get props => [];
}

class HomePageDataLoadSuccess extends HomepageState{
  final List<User> results;

  HomePageDataLoadSuccess({@required this.results})
      : assert(results != null),
        super([results]);

  @override
  String toString() => 'HomePageDataLoaded: { Added Users: $results }';
}

class HomePageDataLoadFail extends HomepageState {
  final List<GraphQLError> errors;
  HomePageDataLoadFail([this.errors]) : super([errors]);

  @override
  String toString() => 'LoginUnSuccessful';
}


