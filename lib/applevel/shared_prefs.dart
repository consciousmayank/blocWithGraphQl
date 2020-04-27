import 'dart:convert';

import 'package:fluttergrocery/model/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyPreferences {

//  SharedPreferences _prefs;

//  Future<bool> getSharedPreferencesInstance() async {
//    _prefs = await SharedPreferences.getInstance().catchError((e) {
//      print("shared prefrences error : $e");
//      return false;
//    });
//    return true;
//  }
//
  Future setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future clearToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString('token');
  }

  Future<bool> isUserLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedToken = prefs.getString('token');
    return savedToken !=null && savedToken.isNotEmpty;
  }
}
