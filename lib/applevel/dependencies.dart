import 'package:fluttergrocery/applevel/shared_prefs.dart';
import 'package:fluttergrocery/screens/home_screen/network/homepage_api_provider.dart';
import 'package:fluttergrocery/screens/home_screen/network/homepage_repo.dart';
import 'package:get_it/get_it.dart';

import 'client.dart';

final getIt = GetIt.instance;

void declareDependencies(){

  //A Factory will return a new instance of the service anytime it is called.
  getIt.registerFactory(() => HomePageRepo());
  getIt.registerFactory(() => HomePageApiProvider());

  //A singleton will always return the same instance of that service.
  getIt.registerSingleton<MyPreferences>(MyPreferences());
  getIt.registerSingleton<Config>(Config());



  //A lazy Singleton will create the object on the first instance when it is
  // called. This is useful when you have a service that takes time to start
  // and should only start when it is needed.
  getIt.registerLazySingleton(() => null);
}