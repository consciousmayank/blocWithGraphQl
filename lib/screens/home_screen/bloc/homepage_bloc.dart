import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttergrocery/applevel/dependencies.dart';
import 'package:fluttergrocery/model/users.dart';
import 'package:fluttergrocery/screens/home_screen/network/homepage_repo.dart';

import './bloc.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  List<User> userList;
  final HomePageRepo homePageRepo = getIt.get<HomePageRepo>();

  @override
  HomepageState get initialState => InitialHomepageState();

  @override
  Stream<HomepageState> mapEventToState(
    HomepageEvent event,
  ) async* {
    try {
      if (event is FetchHomePageData) {
        yield* _mapRepoToState();
      } //else if (...any other event...) {

    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield state;
    }
  }

  Stream<HomepageState> _mapRepoToState() async* {
    try {
      yield HomePageLoadingState();

      final queryResults = await this.homePageRepo.getAllUsers();

      if (queryResults.hasException) {
        yield HomePageDataLoadFail(queryResults.exception.graphqlErrors);
        return;
      }

      final List<dynamic> usersList =
          queryResults.data['users'] as List<dynamic>;

      final List<User> listOfUsers = usersList
          .map((dynamic e) => User(
                e['emailId'] as String,
                e['name'] as String,
                e['collegeId'] as int,
              ))
          .toList();

      userList = listOfUsers;

      yield HomePageDataLoadSuccess(results: listOfUsers);

    } catch (error) {
      yield HomePageDataLoadFail(error);
    }
  }
}
