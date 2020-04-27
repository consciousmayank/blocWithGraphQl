import 'package:equatable/equatable.dart';

//Events come from UI
abstract class HomepageEvent extends Equatable {
  HomepageEvent([List props = const []]) : super(props);
}

class FetchHomePageData extends HomepageEvent{
  @override
  String toString() => 'FetchHomePageData';
}


