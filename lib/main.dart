import 'package:flutter/material.dart';

import 'applevel/dependencies.dart';
import 'applevel/grocery_app.dart';
import 'applevel/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  declareDependencies();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      home: GroceryApplication(),
    );
  }
}

