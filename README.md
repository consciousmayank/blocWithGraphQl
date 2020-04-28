Disclaimer-  This is a proposed app architecture from me. If at any place this architecture can be updated please let me know. We all are learning and together we will learn more. :-P

# fluttergrocery

A new Flutter Grocery application, for Embitel

## Getting Started

This project is a starting point for a Embitel Grocery Flutter application.

libraries used in this project

- get_it: ^4.0.1                    // For dependency Injection
- bloc: ^4.0.0                      //For implementing Bloc Design Pattern
- flutter_bloc: ^4.0.0              //in Flutter
- shared_preferences: ^0.5.7        //Future Use in Saving data in app preferences
- rxdart: ^0.23.1                   //Future Usage
- http: ^0.12.0+4                   //Future Use hopefully to login and register and get token(depends on API devs)
- graphql_flutter: ^3.0.1           //Library to perform graphQL operations(query, mutaions and Subscriptions)
- equatable: ^0.2.0                 //Library to compare two objects by overriding == and hashCode operator

Useful Links

- https://bloclibrary.dev/#/gettingstarted (for bloc design pattern)
- https://github.com/zino-app/graphql-flutter.git (examples inside this repo)
- https://medium.com/filledstacks/dependency-injection-in-flutter-2225d3081f61


- For bloc I would like to share the steps I followed. 
    - First have a clear picture of what interaction(events) will be there in a screen.
    - Make a events_bloc file having these events. (refer HomepageEvent).
    - Then make states_bloc file which path for apis/data changes to reach UI.(refer HomepageState)
    - Then make bloc file, which connects the events and states.(refer HomepageBloc)
      -  _mapRepoToState is just to call api and send result of api to UI, via states.
- For Bloc these steps can be followed, I will follow them. In the app in future when the API's are shared we can try to incorporate the apis also. The repositories are here in the place.

Thanks,
Mayank Joshi
