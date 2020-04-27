import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttergrocery/applevel/shared_prefs.dart';
import 'package:fluttergrocery/screens/home_screen/bloc/bloc.dart';
import 'package:fluttergrocery/screens/home_screen/ui/home_screen.dart';

import 'dependencies.dart';

class GroceryApplication extends StatefulWidget {
  @override
  _GroceryApplicationState createState() => _GroceryApplicationState();
}

class _GroceryApplicationState extends State<GroceryApplication> {
  MyPreferences preferences = getIt.get<MyPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (context) => HomepageBloc(),
            child: HomeScreen(),
          );
  }
}
