import 'package:flutter/material.dart';

class UtilFs {
  static showToast(String message, GlobalKey<ScaffoldState> scaffoldKey) {
      scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ));
    }

}
